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
class Shifter extends Module {
  val io = IO(new Bundle {
    val input = Input(UInt(8.W))
    val cnt = Input(UInt(2.W))
    val result = Output(UInt(16.W))
  })

  val res = io.input << io.cnt
  io.result := res
}
