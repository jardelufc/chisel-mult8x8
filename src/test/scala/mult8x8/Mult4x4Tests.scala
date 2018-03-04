// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class Mult4x4Tests(c: Mult4x4) extends PeekPokeTester(c) {
  val maxInt  = 1 << 4
  for (i <- 0 until 10) {
    val x = rnd.nextInt(maxInt)
    val y = rnd.nextInt(maxInt)
    poke(c.io.dataa, x)
    poke(c.io.datab, y)
    step(1)
    expect(c.io.result, x * y)
  }
}
