// error.d
  
T fun(T)(int a, T b)
{
    static if(is(typeof(b) : int))
        return b;
    else
        return b;
}

int fun1(T)(int a, T b)
{
    static if(is(typeof(b) : int))
        return b;
    else
        return a;
}

void main()
{
    fun(2, "hello");
    fun(2, 2.0);

    fun1(2, "hello");
    fun1(2, 2.0);
}