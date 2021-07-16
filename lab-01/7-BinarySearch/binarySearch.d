import std.stdio;

int binarySearch(int[] arr, int l, int r, int x)
{
    if (r > l)
    {
        int mid = l + (r - l) / 2;

        if (arr[mid] == x)
            return mid;

        if (arr[mid] > x)
            return binarySearch(arr, l, mid - 1, x);

        return binarySearch(arr, mid + 1, r, x); 
    }

    return -1;
}

void main()
{
    import std.stdio : writeln;

    int[] arr = [1, 2, 4, 5, 7, 9];
    auto pos = arr.binarySearch(0, cast(int)arr.length, 2);
    writeln(pos);
}

unittest 
{
    int[] arr = [1, 2, 4, 5, 7, 9];
    assert(arr.binarySearch(0, 0, 1) == -1);
    assert(arr.binarySearch(0, cast(int)arr.length, 2) == 1);
    //assert(arr.binarySearch(0, cast(int)arr.length, 2) == 2);
    //assert(arr.binarySearch(0, 5, 4) == 0);
}
