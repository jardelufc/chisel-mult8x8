// See LICENSE.txt for license details.
package mult8x8

import chisel3._
import scala.collection.mutable.ArrayBuffer

// Problem:
//
// Implement a four-by-four multiplier using a look-up table.
//
class Mult4x4 extends Module {
  val io = IO(new Bundle {
    val dataa   = Input(UInt(4.W))
    val datab  = Input(UInt(4.W))
    val result   = Output(UInt(8.W))
  })
  val mulsValues = new ArrayBuffer[UInt]()

  // Calculate io.z = io.x * io.y by generating a table of values for mulsValues

  for (i <- 0 until 16)
    for (j <- 0 until 16)
      mulsValues += (i * j).asUInt(8.W)
  val tbl = Vec(mulsValues)
  io.result := tbl((io.dataa << 4.U) | io.datab)

}
