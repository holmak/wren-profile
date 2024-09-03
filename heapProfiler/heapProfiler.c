#include <stdio.h>
#include "wren.h"
#include "wren_debug.h"
#include "wren_vm.h"

#include "heapProfiler.h"

void heapProfilerSnapshot(WrenVM* vm)
{
	int count = 0;
	for (Obj* obj = vm->first; obj; obj = obj->next)
	{
		Value value = OBJ_VAL(obj);
		wrenDumpValue(value);
		puts("");
		++count;
	}
	printf("count: %d\n", count);
}
