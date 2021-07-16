import std;

int func4()
{
    int position = 7, c, n = 10; 
    int[] array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 
    array = array[0 .. position] ~ array[position + 1 .. $]; 
 
    import std.stdio;
    writeln("Resultant array:");
    writeln(array);                                                                                                                           
 
    return 0;
}

void func3()
{
    int[] a = [1, 2, 3];
    int[3] b;
    int[3] c;
 
    b[] = a[0 .. a.length] + 4;         // b = [5, 6, 7]
    c[] = (a[] + 1) * b[];  // c = [10, 18, 28]
    writeln(a);
    writeln(b);
    writeln(c);
}

void func2()
{
     int[3] a = [1, 2, 3];
     //int[3] c = [ 1, 2, 3, 4];  // error: mismatched sizes
     int[] b = [1, 2, 3, 4, 5];
     a = 3;                     // set all elements of a to 3 
     b[] = 5;                     // set all elements of b to 5
     a[] = 2;                   // same as `a = 3`; using an empty slice is the same as slicing the full array
     writeln(a);
     writeln(b);
     b = a[0 .. $];             // $ evaluates to the length of the array (in this case 10)
     b = a[];                   // semantically equivalent to the one above
     b = a[0 .. a.length];      // semantically equivalent to the one above
     writeln(b);
     b = a;                 // semantically equivalent to the one above
     b[2 .. 3] = 4;
     writeln(b);             // same as b[2] = 4, b[3] = 4
     b = a[0 .. 3];
     writeln(a);     // error, a does not have 4 elements
     writeln(b);
     a = b[0 .. 3];             // error, operands have different length
}

void func1()
{
    int[10] a;       // declare array of 10 ints
    int[] b;
 
    b = a[1..3];     // a[1..3] is a 2 element array consisting of a[1] and a[2]
    int x = b[1];    // equivalent to `int x = 0;`
    a[2] = 3;
    writeln(a);
    writeln(b);
    writeln(x);
    int y = b[1];    // equivalent to `int y = 3;`
    writeln(x);
    writeln(y);
}

int main()
{
    int position = 7, c, n = 10;
    int[10] array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 
    for (c = position - 1; c < n - 1; c++)
        array[c] = array[c+1];
 
    // if the lines calling printf are deleted,
    // it is easier to spot the now useless import
    import std.stdio : printf;
    printf("Resultant array:\n");
    for (c = 0; c < n - 1; c++)
        printf("%d\n", array[c]);
    func1();
    func2();
    func3();
    func4();
    return 0;
}