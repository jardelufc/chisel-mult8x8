// See LICENSE.txt for license details.
package mult8x8

import chisel3._
import chisel3.iotesters.{Driver, TesterOptionsManager}
import utils.TutorialRunner

object Launcher {
  val tests = Map(
    "Control" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Control(), manager) {
        (c) => new ControlTests(c)
      }
    },
    "Adder" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Adder(), manager) {
        (c) => new AdderTests(c)
      }
    },
    "Mult4x4" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Mult4x4(), manager) {
        (c) => new Mult4x4Tests(c)
      }
    },
    "Mult8x8" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Mult8x8(), manager) {
        (c) => new Mult8x8Tests(c)
      }
    },
    "Mult8x8SingleCycle" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Mult8x8SingleCycle(), manager) {
        (c) => new Mult8x8SingleCycleTests(c)
      }
    },
    "Mult8x83stages" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Mult8x83stages(), manager) {
        (c) => new Mult8x83stagesTests(c)
      }
    },
    "Reg" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Reg(), manager) {
        (c) => new RegTests(c)
      }
    },
    "Shifter" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Shifter(), manager) {
        (c) => new ShifterTests(c)
      }
    },
    "Counter" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Counter(), manager) {
        (c) => new CounterTests(c)
      }
    },
    "Mux4" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new Mux4(), manager) {
        (c) => new Mux4Tests(c)
      }
    }
  )

  def main(args: Array[String]): Unit = {
    TutorialRunner("mult8x8", tests, args)
  }
}
