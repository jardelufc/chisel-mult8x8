// See LICENSE.txt for license details.
package mult8x8

import chisel3._

// Problem:
//
// 'out' should be the sum of 'in0' and 'in1'
// Adder width should be parametrized
//
class Adder extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(16.W))
    val b = Input(UInt(16.W))
    val sum = Output(UInt(16.W))
  })
  io.sum := io.a + io.b
}
