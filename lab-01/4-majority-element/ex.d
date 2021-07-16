import std.stdio:writeln;

int main() {
	int[] v = [7, 7, 5, 7, 5, 1, 5, 7, 5, 5, 7, 7, 7, 7, 7, 7];

	int count = 0, candidate;
	for (int i = 0; i < v.length; i++) {
		if (count == 0) {
			candidate = v[i];
		}
		count += (v[i] == candidate) ? 1 : -1;
	}
	writeln(candidate);
	return 0;
}