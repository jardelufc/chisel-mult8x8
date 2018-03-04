// See LICENSE.txt for license details.
package mult8x8

import chisel3.iotesters.PeekPokeTester

class ControlTests(c: Control) extends PeekPokeTester(c) {
  for (t <- 0 until 20) {
    //step(1)
    expect(c.io.state_out, 0)
    //expect(c.io.in_sel, 0) 
    //expect(c.io.shift, 0)
    //expect(c.io.done, 0)
    //expect(c.io.clken, 1)
    //expect(c.io.regclr, 1)
    poke(c.io.start, 1)
    step(1)

    expect(c.io.state_out, 0)
    expect(c.io.in_sel, 0) 
    expect(c.io.shift, 0)
    expect(c.io.done, 0)
    expect(c.io.clken, 1)
    expect(c.io.regclr, 0)

    poke(c.io.start, 0)
    poke(c.io.count, 0)
    step(1)
    expect(c.io.state_out, 1)
    expect(c.io.in_sel, 0) 
    expect(c.io.shift, 0)
    expect(c.io.done, 0)
    expect(c.io.clken, 0)
    expect(c.io.regclr, 1)

    poke(c.io.start, 0)
    poke(c.io.count, 1)
    step(1)
    expect(c.io.in_sel, 1) 
    expect(c.io.shift, 1)
    expect(c.io.done, 0)
    expect(c.io.clken, 0)
    expect(c.io.regclr, 1)
    expect(c.io.state_out, 2)

    poke(c.io.start, 0)
    poke(c.io.count, 2)
    step(1)
    expect(c.io.in_sel, 2) 
    expect(c.io.shift, 1)
    expect(c.io.done, 0)
    expect(c.io.clken, 0)
    expect(c.io.regclr, 1)
    expect(c.io.state_out, 2)

    poke(c.io.start, 0)
    poke(c.io.count, 3)
    step(1)
    expect(c.io.state_out, 3)
    expect(c.io.in_sel, 3) 
    expect(c.io.shift, 2)
    expect(c.io.done, 1)
    expect(c.io.clken, 0)
    expect(c.io.regclr, 1)
    step(1)
 
}  
  
}
