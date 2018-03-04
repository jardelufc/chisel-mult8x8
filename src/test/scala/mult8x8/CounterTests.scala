// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class CounterTests(c: Counter) extends PeekPokeTester(c) {
  /*var tot = 0
  for (t <- 0 until 16) {
    val in = rnd.nextInt(2)
    poke(c.io.in, in)
    step(1)
    if (in == 1) tot += 1
    expect(c.io.out, tot)
  }*/
    // val in = rnd.nextInt(2)
    poke(c.io.clr, 0)
    step(1)
    poke(c.io.clr, 1)
    expect(c.io.sum, 0)
    step(1)
    expect(c.io.sum, 1)
    step(1)
    poke(c.io.clr, 0)
    step(1)
    poke(c.io.clr, 1)
    expect(c.io.sum, 0)
    step(1)
    expect(c.io.sum, 1)
    step(1)
    expect(c.io.sum, 2)
    step(1)
    expect(c.io.sum, 3)
    step(1)
    expect(c.io.sum, 0)

}

class CounterTester extends ChiselFlatSpec {
  behavior of "Counter"
  backends foreach {backend =>
    it should s"correctly accumulate randomly generated numbers in $backend" in {
      Driver(() => new Counter(), backend)(c => new CounterTests(c)) should be (true)
    }
  }
}
