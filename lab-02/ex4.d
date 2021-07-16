import std.stdio : writeln;

void printArguments(T...)(T t)
{
    pragma(msg, "hello");
    writeln("hello");
    static if(T.length == 0)
        return;
    else
    {
        writeln(t[0]);
        printArguments(t[1 .. $]);
    }
}

struct MyClass
{
    string toString() const
    {
         return "MyClass Type";
    }
}

void main()
{
    printArguments!(int, string, MyClass)(2, "aha", MyClass());
}