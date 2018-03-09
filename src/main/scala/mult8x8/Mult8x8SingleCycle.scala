// See LICENSE.txt for license details.
package mult8x8

import chisel3._

class Mult8x8SingleCycle extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(8.W))
    val b = Input(UInt(8.W))
    val result = Output(UInt(16.W))
  })

  val mymul0 = Module(new Mult4x4())
  val mymul1 = Module(new Mult4x4())
  val mymul2 = Module(new Mult4x4())
  val mymul3 = Module(new Mult4x4())
  val adder0 = Module(new Adder())
  val adder1 = Module(new Adder())
  val adder2 = Module(new Adder())
  val shifter0 = Module(new Shifter())
  val shifter1 = Module(new Shifter())
  val shifter2 = Module(new Shifter())

  val ioa = RegInit(0.U(8.W))
  val iob = RegInit(0.U(8.W))

  ioa:=io.a
  iob:=io.b

  mymul0.io.dataa := ioa(3,0).asTypeOf(mymul0.io.dataa)
  mymul0.io.datab := iob(3,0).asTypeOf(mymul0.io.dataa)


  mymul1.io.dataa := ioa(3,0).asTypeOf(mymul1.io.dataa)
  mymul1.io.datab := iob(7,4).asTypeOf(mymul1.io.datab)


  
  mymul2.io.dataa  :=  ioa(7,4).asTypeOf(mymul2.io.dataa)
  mymul2.io.datab  :=  iob(3,0).asTypeOf(mymul2.io.datab)


  mymul3.io.dataa  := ioa(7,4).asTypeOf(mymul3.io.dataa)
  mymul3.io.datab  := iob(7,4).asTypeOf(mymul3.io.datab)
 

  adder0.io.b:=mymul0.io.result.asTypeOf(adder0.io.b)
  adder0.io.a:= shifter0.io.result

  adder1.io.b:=shifter1.io.result
  adder1.io.a:= shifter2.io.result

  adder2.io.b:=adder0.io.sum
  adder2.io.a:= adder1.io.sum

  shifter0.io.input:=mymul1.io.result
  shifter0.io.cnt:=1.U(2.W)

  shifter1.io.input:=mymul2.io.result
  shifter1.io.cnt:=1.U(2.W)

  shifter2.io.input:=mymul3.io.result
  shifter2.io.cnt:=2.U(2.W)

  io.result := adder2.io.sum
}
