struct S {
    int b;
    S(int a);
    virtual ~S() = 0;
};

S::S(int a) {
    b = 42;
    float arr[] = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8};
    for (int i = 0; i < 8; i++) {
        float *temp = &arr[i];
        arr[i] = *temp * *temp / __builtin_sqrtf(*temp + a);
    }
    this->b = arr[a % 8];
    b -= 42;
}

S *s;