package mult8x8

import chisel3._
import chisel3.util._

class Control extends Module {
  val io = IO(new Bundle {
    val start = Input(Bool())
    val count = Input(UInt(2.W))
    val state_out = Output(UInt(3.W))
    val in_sel = Output(UInt(2.W))
    val shift = Output(UInt(2.W))
    val done = Output(Bool())
    val clken = Output(Bool())
    val regclr = Output(Bool())
  })

  val sIdle :: sLsb :: sMid :: sMsb:: sErr :: Nil = Enum(5)
  val state = RegInit(sIdle)
  val mystate_out = Reg(UInt(3.W)) 
  val myin_sel = Reg(UInt(2.W))
  val myshift = Reg(UInt(2.W))
  val mydone = Reg(Bool())
  val myclken = Reg(Bool())
  val myregclr = Reg(Bool())

  io.state_out    := mystate_out //state.asTypeOf(UInt(3.W))
  io.in_sel := myin_sel
  io.shift  := myshift
  io.done   := mydone
  io.clken  := myclken
  io.regclr := myregclr

  switch (state) {
    is (sIdle) {
      mystate_out:=0.U
      when (io.start) {
        myin_sel:=0.U
	myshift:=0.U
        mydone:=0.U
        myclken:=1.U
        myregclr:=0.U
        state := sLsb
      }.otherwise {
        myin_sel:=0.U
	myshift:=0.U
        mydone:=0.U
        myclken:=1.U
        myregclr:=1.U
      }
    }
    is (sLsb) {
      mystate_out:=1.U
      when (!io.start && io.count===0.U ) {
        state := sMid
        myin_sel:=0.U
	myshift:=0.U
        mydone:=0.U
        myclken:=0.U
        myregclr:=1.U
      } .otherwise {
        mydone:=0.U
        myclken:=1.U
        myregclr:=1.U
        state := sErr
      }
    }
    is (sMid) {
      mystate_out:=2.U
      when (!io.start && io.count===2.U) {
        state := sMsb
        myin_sel:=2.U
	myshift:=1.U
        mydone:=0.U
        myclken:=0.U
        myregclr:=1.U
      }.elsewhen(!io.start && io.count===1.U) {
        myin_sel:=1.U
	myshift:=1.U
        mydone:=0.U
        myclken:=0.U
        myregclr:=1.U
      }.otherwise {
        mydone:=0.U
        myclken:=1.U
        myregclr:=1.U
        state := sErr
      }
    }
   is (sMsb) {
      mystate_out:=3.U
      when (!io.start && io.count===3.U) {
        state := sIdle
        myin_sel:=3.U
	myshift:=2.U
        mydone:=1.U
        myclken:=0.U
        myregclr:=1.U
      }.otherwise {
        mydone:=0.U
        myclken:=1.U
        myregclr:=1.U
        state := sErr
      }
    }
   is (sErr) {
      mystate_out:=4.U
      when (io.start) {
        state := sLsb
        mydone:=0.U
        myclken:=1.U
        myregclr:=0.U
      }.otherwise {
        mydone:=0.U
        myclken:=1.U
        myregclr:=1.U
      }
    }
 
  }
}
