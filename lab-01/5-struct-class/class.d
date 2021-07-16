import std.conv:to;
import std.datetime;
import std.stdio;

class BigClass
{
    /* this sequence is used to generate at compile
       time the following code:

       int a0;
       int a1;
       ...
       int a999;
    */
    static foreach(i; 0 .. 1000)
        mixin("int a" ~ to!string(i) ~ ";");
}

int var;

void get_a0(BigClass a)
{
    var = a.a0;
    a.a0 = 42;
}

void main()
{
    auto stattime = Clock.currTime();

    BigClass s = new BigClass();
    for(int i = 0; i < 100000; i++)
        get_a0(s);

    auto endttime = Clock.currTime();
    auto duration = endttime - stattime;
    writeln("Hello Duration ==> ", duration);
}
