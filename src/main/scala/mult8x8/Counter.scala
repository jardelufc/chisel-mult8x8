// See LICENSE.txt for license details.
package mult8x8

import chisel3._

// Problem:
//
// Count incoming trues
// (increase counter every clock if 'in' is asserted)
//

class Counter extends Module {
  val io = IO(new Bundle {

    val clr  = Input(Bool())
    val sum = Output(UInt(2.W))
  
  })
  val accumulator = RegInit(0.U(2.W))

  when(~io.clr) 
  {
    accumulator := 0.U(2.W) 
  }
  .elsewhen(io.clr) 
  {
    accumulator := accumulator + 1.U(2.W) 
  }
  io.sum := accumulator
}
