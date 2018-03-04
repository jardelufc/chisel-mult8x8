// See LICENSE.txt for license details.
package mult8x8

import chisel3._

// Example:
//
// This is example of multiplexer 2-to-1 with 'sel' as control signal
// Multiplexed inputs are 'in0' and 'in1'
//

class Mux4 extends Module {
  val io = IO(new Bundle {
    val sel = Input(Bool())
    val a = Input(UInt(4.W))
    val b = Input(UInt(4.W))
    val y = Output(UInt(4.W))
  })

io.y:=Mux(io.sel,io.b,io.a)
}
