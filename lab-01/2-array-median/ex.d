import std.stdio:writeln;
import std.algorithm.sorting;
import std.algorithm;

int[] bubblesort(int[] arr) {
	int found = 0, aux;

	for (int i = 0; i < arr.length - 1; i++) {
		found = 0;
		for (int j = 0; j < arr.length - i - 1; j++) {
			if (arr[j] > arr[j + 1]) {
				aux = arr[j];
				arr[j] = arr[j + 1];
				arr[j + 1] = aux;
				found = 1; 
			}
		}
		if (found == 0)
			break;
	}
	return arr;
}

int main() {
	int[] v = [20, 9, 2, 9, 4, 3, 6, 7];

	v.sort!("a < b");
	writeln(v);

	writeln(v.uniq());
	//int[] arr = v.uniq();
	v.length -= v.uniq().copy(v).length;
	writeln(v);

	writeln(v.length);
	int n = v[(v.length + 1) / 2];
	writeln(n);

	int[] array = [2, 1, 54, 2, 54, 3, 546, 43];
	writeln(array.bubblesort());
	return 0;
}