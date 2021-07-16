void majorityElement(int []arr) {
    import std.stdio;
    import std.algorithm.sorting : sort;
    arr.sort;
    writeln(arr[arr.length / 2]);
}

int main() {

    //int []arr = [2,2,1,1,1,2,2];


    // EX 2 / 3
    //int []arr = [1, 2, 1, 3, 4, 3, 5, 6];
    //import std.algorithm.sorting : sort;
    //arr.sort;
    //import std.stdio;
    //
    //import std.algorithm.iteration;
    ////auto noDups = uniq(arr);
    ////writeln(noDups);
    //
    //import std.algorithm.mutation : copy;
    //arr.length -= arr.uniq().copy(arr).length;
    //writeln(arr);
    //writeln(arr.length);
    //
    //auto res = arr[(arr.length + 1) / 2];
    //writeln(res);
    majorityElement(arr);
    return 0;
}