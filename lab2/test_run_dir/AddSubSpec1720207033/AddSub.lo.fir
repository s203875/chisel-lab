circuit AddSub :
  module AddSub :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4>
    input io_b : UInt<4>
    input io_selAdd : UInt<1>
    output io_y : UInt<4>

    node _T = add(io_a, io_b) @[AddSub.scala 18:24]
    node _T_1 = tail(_T, 1) @[AddSub.scala 18:24]
    node _T_2 = sub(io_a, io_b) @[AddSub.scala 18:29]
    node _T_3 = tail(_T_2, 1) @[AddSub.scala 18:29]
    node _T_4 = mux(io_selAdd, _T_1, _T_3) @[AddSub.scala 18:14]
    node res = _T_4
    io_y <= res @[AddSub.scala 22:8]