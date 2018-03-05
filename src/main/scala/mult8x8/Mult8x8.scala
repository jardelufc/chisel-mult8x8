// See LICENSE.txt for license details.
package mult8x8

import chisel3._

class Mult8x8 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(8.W))
    val b = Input(UInt(8.W))
    val start = Input(Bool())
    val reset = Input(Bool())
    val result = Output(UInt(16.W))
    val done_flag = Output(Bool())
  })

  val reg0 = Module(new Reg())
  val ctrl0 = Module(new Control())
  val mux0 = Module(new Mux4())
  val mux1 = Module(new Mux4())
  val cnt0 = Module(new Counter())
  val mul0 = Module(new Mult4x4())
  val adder0 = Module(new Adder(8))
  val shifter0 = Module(new Shifter())

  reg0.io.clr:=ctrl0.io.regclr
  reg0.io.clken := ctrl0.io.clken
  reg0.io.in_reg:=adder0.io.sum
  
  ctrl0.io.start := io.start
  ctrl0.io.reset := io.reset
  ctrl0.io.count:=cnt0.io.sum  

  mux0.io.a := io.a(3,0)
  mux0.io.b := io.a(7,4)
  mux0.io.sel:=ctrl0.io.in_sel(1)

  mux1.io.a := io.b(3,0)
  mux1.io.b := io.b(7,4) 
  mux1.io.sel:=ctrl0.io.in_sel(0)

  cnt0.io.clr := ~io.start

  mul0.io.dataa:= mux0.io.y
  mul0.io.datab:= mux1.io.y  

  adder0.io.b:=reg0.io.out_reg
  adder0.io.a:= shifter0.io.result

  shifter0.io.input:=mul0.io.result
  shifter0.io.cnt:=ctrl0.io.shift
  
  io.result := reg0.io.out_reg
  io.done_flag := ctrl0.io.done
}
