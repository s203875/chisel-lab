;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Decoder : 
  module Decoder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip sel : UInt<2>, out : UInt<4>}
    
    wire dec : UInt
    dec <= UInt<1>("h00")
    node _T = eq(UInt<1>("h00"), io.sel) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      dec <= UInt<1>("h01") @[Decoder.scala 15:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.sel) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        dec <= UInt<2>("h02") @[Decoder.scala 16:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.sel) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          dec <= UInt<3>("h04") @[Decoder.scala 17:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.sel) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            dec <= UInt<4>("h08") @[Decoder.scala 18:21]
            skip @[Conditional.scala 39:67]
    io.out <= dec @[Decoder.scala 22:10]
    
