// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class RegTests(c: Reg) extends PeekPokeTester(c) {
  var res = 1
    poke(c.io.clr, 0)
    step(1)
    poke(c.io.clr, 1)
    poke(c.io.clken, 1)
    step(1)
  
  for (t <- 0 until 16) {
    val inc = rnd.nextInt(16)
    poke(c.io.in_reg, inc)
    step(1)
    expect(c.io.out_reg, inc)
  }

  val inc= peek(c.io.out_reg)
  poke(c.io.clken, 0)
    
  for (t <- 0 until 16) {
    val aux = rnd.nextInt(16)
    poke(c.io.in_reg, aux)
    step(1)
    expect(c.io.out_reg, inc)
  }
}
