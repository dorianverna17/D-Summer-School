import std.algorithm : group;
import std.range : chain, dropOne, front, retro;
import std.stdio: writeln;

class Date
{
    int day;
    int hour;
 
    this(int d, int h)
    {
        day = d;
        hour = h;
    }
 
    invariant
    {
        assert(1 <= day && day <= 31);
        assert(0 <= hour && hour < 24, "hour out of bounds");
    }
}

void fun(int a) {
	writeln(a);
}

void fun(int a, int b = 8) {
	writeln(a + b);
}

auto fun() {
    return 7;
}

int fun1(ref int a, int b)
in (a > 0)
in (b >= 0, "b cannot be negative!")
out (r; r > 0, "return must be positive")
out (; a != 0)
{
    // function body
    writeln(a);
    return 1;
}
 
int fun2(ref int a, int b)
in
{
    assert(a > 0);
    assert(b >= 0, "b cannot be negative!");
}
out (r)
{
    assert(r > 0, "return must be positive");
    assert(a != 0);
}
do
{
    // function body
    return 2;
}

int main() {
	writeln([1, 2].chain([3, 4]).retro); // 4, 3, 2, 1
	writeln([1, 1, 2, 2, 2].group);
	writeln([1, 1, 2, 2, 2].group.dropOne);
	writeln([1, 1, 2, 2, 2].group.dropOne.front); // (2, 3)
 
	writeln(dropOne(group([1, 1, 2, 2, 2])));

	fun(1);
	fun(2, 3);
	int b = fun();
    auto c = fun(); // works for variables also
    writeln(b);
    writeln(c);

    //Date d = new Date(234, 12);
    //writeln(d);
    int aux = -1;
    auto s = fun1(aux, 4);
	return 0;
}