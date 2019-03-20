#include <chrono>
#include <iostream>
#include <random>
#include <string>
#include <vector>
#include <array>
#include "chi2.h"

void print_result(
  const std::vector<std::array<float, 3>>& x,
  const std::vector<std::array<float, 3>>& y,
  const std::vector<float>& chi2,
  const int print_max)
{
  std::cout << "Printing first " << print_max << " results:" << std::endl;
  for (int i=0; i<chi2.size() && i<print_max; ++i) {
    std::cout << "x: {" << x[i][0] << ", " << x[i][1] << ", " << x[i][2] << "}, "
      << "y: {" << y[i][0] << ", " << y[i][1] << ", " << y[i][2] << "}, "
      << "chi2: " << chi2[i] << std::endl;
  }
  std::cout << std::endl;
}

void simple_batch_chi2(
  const std::vector<std::array<float, 3>>& x_vector,
  const std::vector<std::array<float, 3>>& y_vector,
  std::vector<float>& chi2_vector,
  const float m,
  const float q)
{
  for (int i=0; i<chi2_vector.size(); ++i) {
    float chi2 = 0.f;
    const std::array<float, 3>& x = x_vector[i];
    const std::array<float, 3>& y = y_vector[i];

    for (int j=0; j<x.size(); ++j) {
      const float expected_y = m * x[j] + q;
      chi2 += (y[j] - expected_y) * (y[j] - expected_y);
    }

    chi2_vector[i] = chi2;
  }
}

int main() {
  using namespace std::chrono;

  // Constants for the chi2 calculation
  const float m = 1.5f;
  const float q = 0.8f;

  // Number of elements to process
  const int size = 100000;

  // Each element is a three-element vector {x0, x1, x2}, {y0, y1, y2}
  std::vector<std::array<float, 3>> x(size);
  std::vector<std::array<float, 3>> y(size);
  std::vector<float> chi2(size);

  // Populate x and y with random numbers
  std::mt19937 generator(123);
  std::uniform_real_distribution<float> dis(0.f, 10.f);
  for (int i = 0; i < size; ++i) {
    for (int j=0; j<3; ++j) {
      x[i][j] = dis(generator);
      y[i][j] = dis(generator);
    }
  }

  high_resolution_clock::time_point t1 = high_resolution_clock::now();

  // Perform chi2 calculation
  simple_batch_chi2(x, y, chi2, m, q);

  high_resolution_clock::time_point t2 = high_resolution_clock::now();
  duration<double> time_span_m1 = duration_cast<duration<double>>(t2 - t1);

  std::vector<float> chi2_2(size);
  std::vector<ispc::float3> x_ispc(size), y_ispc(size);
  for(size_t i = 0; i < size; i++){
    x_ispc[i].v[0] = x[i][0];
    x_ispc[i].v[1] = x[i][1];
    x_ispc[i].v[2] = x[i][2];

    y_ispc[i].v[0] = y[i][0];
    y_ispc[i].v[1] = y[i][1];
    y_ispc[i].v[2] = y[i][2];
  }

  high_resolution_clock::time_point t3 = high_resolution_clock::now();

  // Insert here your chi2 calculation routine using SPMD
  ispc::chi2_ispc(size, chi2_2.data(), x_ispc.data(), y_ispc.data(), m , q);
  // https://ispc.github.io/documentation.html

  high_resolution_clock::time_point t4 = high_resolution_clock::now();
  duration<double> time_span_m2 = duration_cast<duration<double>>(t4 - t3);

  // Print first results
  print_result(x, y, chi2, 20);
  print_result(x, y, chi2_2, 20);

  std::cout << "The values match? " << std::equal(chi2.begin(), chi2.end(), chi2_2.begin()) << "\n";

  std::cout << "Chi2 calculation #1 took " << time_span_m1.count()
            << " seconds" << std::endl
            << "Chi2 calculation #2 took " << time_span_m2.count()
            << " seconds" << std::endl
            << "Speedup: " << (time_span_m1.count() / time_span_m2.count())
            << "x" << std::endl;

  return 0;
}
