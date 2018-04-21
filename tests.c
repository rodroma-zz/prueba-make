#include "sut.h"
#include <cspecs/cspec.h>

context(prueba) {

	describe("Un test") {

		it("one() deberia dar uno") {
			should_int(one()) be equal to(1);
		} end
	
	} end
}
