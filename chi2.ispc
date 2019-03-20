typedef float<3> float3;

export void chi2_ispc(uniform const size_t N, uniform float chi2[],  uniform float3 x[], uniform float3 y[], uniform const float m, uniform const float q){
    for(size_t i = programIndex; i < N; i+= programCount){
        float3 expected_y = m * x[i] + q;
        chi2[i] = (y[i].x - expected_y.x) * (y[i].x - expected_y.x) +
                  (y[i].y - expected_y.y) * (y[i].y - expected_y.y) +
                  (y[i].z - expected_y.z) * (y[i].z - expected_y.z);
    }
}