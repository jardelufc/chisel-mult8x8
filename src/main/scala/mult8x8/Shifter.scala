// See LICENSE.txt for license details.
package mult8x8

import chisel3._
import chisel3.util.Cat


class Shifter extends Module {
  val io = IO(new Bundle {
    val input = Input(UInt(8.W))
    val cnt = Input(UInt(2.W))
    val result = Output(UInt(16.W))
  })

/*

  class MyBundle extends Bundle {
    val a = UInt(8.W) 
    val b = UInt(8.W)

  }

  class MyOtherBundle extends Bundle {
    val a = UInt(4.W) 
    val b = UInt(8.W)
    val c = UInt(4.W)
  }

  val uint = 0xFFFF.U
  val res = (new MyBundle).fromBits(uint)
  res.a:=io.input
  res.b:=0.U(8.W)

  val uint1 = 0xFFFF.U
  val res1 = (new MyBundle).fromBits(uint1)
  res1.b:=io.input
  res1.a:=0.U(8.W)

  val uint2 = 0xFFFF.U
  val res2 = (new MyOtherBundle()).fromBits(uint2)
  res2.b:=io.input
  res2.a:=0.U(4.W)
  res2.c:=0.U(4.W)

*/
 when (io.cnt===1.U(2.W)) 
  {
     io.result:= io.input.asTypeOf(io.result) << 4  // res2.asTypeOf(UInt(16.W))
  }  
  .elsewhen (io.cnt===2.U(2.W)) 
  {
      io.result:= io.input.asTypeOf(io.result) << 8 // res.asTypeOf(UInt(16.W))
  }
  .otherwise  { 
     io.result:= io.input.asTypeOf(io.result)  //res1.asTypeOf(UInt(16.W))
  }

  
}
