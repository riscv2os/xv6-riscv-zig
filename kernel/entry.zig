export fn _entry() callconv(.Naked) noreturn {
    asm volatile (
        \\la sp, stack0
        \\li a0, 1024*4
        \\csrr a1, mhartid
        \\addi a1, a1, 1
        \\mul a0, a0, a1
        \\add sp, sp, a0
        \\call start
    );

    while (true) {}
}
