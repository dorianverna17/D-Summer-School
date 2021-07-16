import std.stdio : writeln;

int* p;

void foo()
{
    int a = 7;
    p = &a;   
}

void boo(ref int* s)
{
    int b = 9;
    s = &b;
}

void main()
{
    foo();
    int b;
    const int* s = p;
    //s = &b;   --> error: cannot modify const exp s;
    writeln(*s);
    boo(p);
    writeln(*s);
}
