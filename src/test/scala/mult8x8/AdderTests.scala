// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class AdderTests(c: Adder) extends PeekPokeTester(c) {
  for (i <- 0 until 10) {
    val in0 = rnd.nextInt(1 << 16)
    val in1 = rnd.nextInt(1 << 16)
    poke(c.io.a, in0)
    poke(c.io.b, in1)
    step(1)
    expect(c.io.sum, (in0 + in1)&((1 << 16)-1))
  }
}

class AdderTester extends ChiselFlatSpec {
  behavior of "Adder"
  backends foreach {backend =>
    it should s"correctly add randomly generated numbers in $backend" in {
      Driver(() => new Adder(), backend)(c => new AdderTests(c)) should be (true)
    }
  }
}
