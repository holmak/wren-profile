
import "heapProfiler" for HeapProfiler

class House {
	color { _color }

	construct new(color) {
		_color = color
	}

	toString {
		return "a House (" + _color + ")"
	}
}

class Test {
	static run() {
		var list = [House.new("red"), House.new("blue")]
		HeapProfiler.snapshot()
		System.print(list)
	}
}

Test.run()
