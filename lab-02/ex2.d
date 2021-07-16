// generic partitioning search
// ex2, ex3
import std.stdio;

struct Structura {
	int a, b;

	this(int a, int b) {
		this.a = a;
		this.b = b;
	}

	int suma() {return a + b;}
}

int gps(T)(T[] array, T key) {
	int count = 0;

	if (is (typeof(key) == int))
		writeln("int");
	pragma(msg, T);
	static if (is (T == int)) {
		for (int i = 0; i < array.length; i++) {
			if (array[i] < key)
				count++;
		}
	} else if (is (T == Structura)) {
		for (int i = 0; i < array.length; i++) {
			if (array[i].suma() < key.suma())
				count++;
		}
	} else {
		writeln("invalid");
	}
	return count;
}

void main() {
	int[] array = [1, 2, 4, 4, 5, 2, 7, 8];
	Structura[10] v;
	for (int i = 0; i < 10; i++) {
		Structura s = Structura(i, i + 1);
		v[i] = s;
	}
	int result = gps!int(array, 4);
	writeln(result);
	Structura s = Structura(0, 0);
	result = gps!Structura(v, s);
	writeln(result);
}
