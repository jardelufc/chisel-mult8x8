// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class ShifterTests(c: Shifter) extends PeekPokeTester(c) {
/*  for (t <- 0 until 5) {
    for (u <- 0 until 16) {
      val in = rnd.nextInt(8)
      poke(c.io.cnt, t)
      poke(c.io.in, in)
      step(1)
      val res = in << t
      expect(c.io.result, res)
    }
  }*/

    for (t <- 0 until 256) {
      var u = 1// rnd.nextInt(2)
      var in = 0x55// rnd.nextInt(16)
      // in = rnd.nextInt(8)
      poke(c.io.input, in)
      poke(c.io.cnt, u)
      step(1) 
      // val res = in << u
      expect(c.io.result, 0x0550)
    }
}
