// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class Mult8x8SingleCycleTests(c: Mult8x8SingleCycle) extends PeekPokeTester(c) {
  val maxInt  = 0xFF
//  for (i <- 0 until 10) {
    val x = rnd.nextInt(maxInt)
    val y = rnd.nextInt(maxInt)
    poke(c.io.a, x)
    poke(c.io.b, y)
    step(1)
    expect(c.io.result, x * y)
    
    /*poke(c.io.start,0)
    poke(c.io.reset,1)
    step(1)
    poke(c.io.start,0)
    poke(c.io.reset,0)
    step(1)
    poke(c.io.start,1)
    step(1)
    poke(c.io.start,0)
    step(1)
    //expect(c.io.result, x * y)
    step(1)
    //expect(c.io.result, x * y)
    step(1)
    //expect(c.io.result, x * y)
    step(1)
    expect(c.io.done_flag, 1)
    step(1)
    expect(c.io.result, x * y)
    expect(c.io.done_flag, 0)
    //step(1)*/
  //}
}
