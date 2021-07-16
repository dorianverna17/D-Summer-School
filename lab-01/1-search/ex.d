
import std.stdio:writeln;

int linearsearch(int[] arr, int val)
{
    int i;
    for (i = 0; i < arr.length; i++)
    {
        if (arr[i] == val)
            return 1;
    }
    return 0;
}

int main()
{
    int[] v = [1, 2, 3, 4, 5, 6];
    writeln(linearsearch(v, 0));
    writeln(linearsearch(v, 1));
    return 0;
}