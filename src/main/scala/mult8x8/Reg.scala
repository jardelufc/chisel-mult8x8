// See LICENSE.txt for license details.
package mult8x8

import chisel3._
import chisel3.util.Cat

// Problem:
//
// Implement a 16-bit Fibonacci Linear-feedback shift register
// with polynomial x^16 + x^14 + x^13 + x^11 + 1
// State change is allowed only when 'inc' is asserted
//
class Reg extends Module {
  val io = IO(new Bundle {
    val clr = Input(Bool())
    val clken = Input(Bool())
    val in_reg = Input(UInt(16.W))
    val out_reg = Output(UInt(16.W))
  })

  val res = RegInit(0.U(16.W))

    when(~io.clr)
  {
    res := 0.U(16.W)
  }
  .elsewhen((io.clr & io.clken))
  {
    res := io.in_reg
  }

  io.out_reg := res
}
