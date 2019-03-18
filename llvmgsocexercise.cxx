typedef struct{
    int (**a)(...);
    int b;
} __attribute__((packed)) S;

S *s = 0;

void temp(S *s, int a) {
    s = new S;
    float arr[] = {0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f};
    for (int i = 0; i < 8; i++) {
        arr[i] = arr[i] * arr[i] / __builtin_sqrt(arr[i] + a);
    }
    s->b = arr[a % 8];
    s->b = s->b - 42;
    return;
}
