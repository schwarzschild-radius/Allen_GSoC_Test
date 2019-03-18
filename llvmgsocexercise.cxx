struct S{
    virtual ~S();
    int b;
    void temp(int a);
};

void S::temp(int a) {
    float arr[] = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8};
    for (int i = 0; i < 8; i++) {
        arr[i] = arr[i] * arr[i] / __builtin_sqrt(arr[i] + a);
    }
    this->b = arr[a % 8];
    this->b = this->b - 42;
    return;
}
