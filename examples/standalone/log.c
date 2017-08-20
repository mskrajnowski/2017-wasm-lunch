extern void console_log(char* msg);

int main() {
    console_log("Hello world!");
}

void upper(char* in, char* out) {
    int i;
    for (i = 0; in[i] != 0; ++i) {
        out[i] = in[i] & 0x5f;
    }
    out[i] = 0;
}
