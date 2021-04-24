circuit Majority :
  module Majority :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    output io_out : UInt<1>

    node _T = and(io_a, io_b) @[Majority.scala 23:15]
    node _T_1 = and(io_a, io_c) @[Majority.scala 23:21]
    node _T_2 = or(_T, _T_1) @[Majority.scala 23:18]
    node _T_3 = and(io_b, io_c) @[Majority.scala 23:27]
    node res = or(_T_2, _T_3) @[Majority.scala 23:24]
    io_out <= res @[Majority.scala 29:10]