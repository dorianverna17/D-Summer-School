import std;

struct Rectangle
{
    size_t length, width;
    int id;
 
    size_t area() { return length*width; }
    size_t perimeter() { return 2*(length + width); }
    size_t isSquare() { return length == width; }
    void setId(int id) {this.id = id; }
}

void main()
{
    int[string] aa;            // Associative array of ints that are
                               // indexed by string keys.
                               // The KeyType is string.
    aa["hello"] = 3;           // set value associated with key "hello" to 3
    int value = aa["hello"];
    aa.remove("hello");

    writeln(aa);

    Rectangle s;
}