import std.stdio:writeln;
import std.algorithm.sorting:sort;
import std.traits;

auto my_sort(T)(T array)
if (isMutable!(T)) {
	return bubblesort(array);
}

auto my_sort(T)(T array)
if (!isMutable!(T)) {
	int[] array2 = array.dup();
	return bubblesort(array2);
}

int[] bubblesort(int[] array) {
	int aux, aux1;

	for (int i = 0; i < array.length - 1; i++) {
		aux = 0;

		for (int j = 0; j < array.length - 1; j++) {
			if (array[j] > array[j + 1]) {
				aux1 = array[j];
				array[j] = array[j + 1];
				array[j + 1] = aux1;
				aux = 1;
			}
		}
		if (aux == 0) {
			break;
		}
	}
	return array;
}

void main() {
	int[] array1 = [1, 2, 4, 4, 5, 2, 7, 8];
	const int[8] array2 = [1, 2, 4, 4, 5, 2, 7, 8];
	immutable int[8] array3 = [1, 2, 4, 4, 5, 2, 7, 8];

	auto result = my_sort(array1);
	writeln(result);
	result = my_sort(array2);
	writeln(result);
	result = my_sort(array3);
	writeln(result);
}