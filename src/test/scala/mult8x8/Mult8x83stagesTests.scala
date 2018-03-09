// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class Mult8x83stagesTests(c: Mult8x83stages) extends PeekPokeTester(c) {
  val maxInt  = 0xFF
//  for (i <- 0 until 10) {
    val x0 = rnd.nextInt(maxInt)
    val y0 = rnd.nextInt(maxInt)
    val x1 = rnd.nextInt(maxInt)
    val y1 = rnd.nextInt(maxInt)
    poke(c.io.a, x0)
    poke(c.io.b, y0)
    step(1)
    poke(c.io.a, x1)
    poke(c.io.b, y1)
    //expect(c.io.result, x * y)
    step(1)
    //expect(c.io.result, x * y)
    step(1)
    expect(c.io.result, x0 * y0)
    step(1)
    expect(c.io.result, x1 * y1)
    
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
