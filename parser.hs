{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,302) ([32768,5975,8704,0,11951,17408,0,8192,0,0,0,0,0,128,0,0,0,65408,27,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,128,0,24576,256,0,0,512,0,0,0,0,49152,2859,4352,32768,5713,8704,0,11427,17408,0,8192,0,0,47804,4096,1,0,0,0,51760,16386,4,0,0,7,0,0,0,0,288,0,0,63488,447,0,1152,0,35840,178,272,0,32,0,49152,512,0,24576,1428,2176,49152,2856,4352,32768,5713,8704,0,11427,17408,0,22854,34816,0,45708,4096,1,25880,8193,2,51760,16386,4,37984,32773,8,10432,11,17,20864,22,34,41728,44,68,17920,89,136,35840,178,272,6144,357,544,0,512,0,32768,1025,0,0,0,3968,0,0,7936,0,0,0,0,0,0,0,0,0,0,0,49152,1,0,32768,3,0,57088,55,0,40448,111,0,0,31,0,0,62,0,49152,892,0,32768,1785,0,49664,3583,0,33792,7167,24576,1428,2176,0,0,28670,0,8192,1,0,0,0,0,22854,34816,0,0,0,0,0,0,0,192,2,0,0,0,0,0,0,0,0,64512,223,0,0,0,17920,89,136,0,57344,1791,6144,357,544,0,2048,0,0,128,0,0,36864,0,0,0,0,0,1024,0,0,16408,0,0,0,0,0,26392,8193,2,0,0,0,0,65280,55,10432,11,17,0,64512,223,0,272,0,0,0,0,0,6144,0,0,8192,0,0,0,0,24576,1428,2176,0,0,28670,32768,5713,8704,0,11427,17408,0,22854,34816,0,45964,4096,1,0,0,0,0,0,0,0,0,0,0,65024,111,0,64512,223,0,63488,447,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Instrs","Instr","Type","Types","Parameters","Parameter","Expr","Handlers","Handler","Handles","Args","Tuple","True","False","int","bool","func","handle","trivial","if","otherwise","fixed","ident","num","\"\\n\"","\"(\"","\")\"","\"{\"","\"}\"","\",\"","\"=>\"","\"=\"","\"=/=\"","\"<=\"","\">=\"","\"&\"","\"|\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"!\"","\"<\"","\">\"","%eof"]
        bit_start = st Prelude.* 49
        bit_end = (st Prelude.+ 1) Prelude.* 49
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..48]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (21) = happyShift action_10
action_0 (23) = happyShift action_11
action_0 (25) = happyShift action_12
action_0 (26) = happyShift action_13
action_0 (27) = happyShift action_14
action_0 (28) = happyReduce_7
action_0 (29) = happyShift action_15
action_0 (42) = happyShift action_16
action_0 (46) = happyShift action_17
action_0 (49) = happyReduce_7
action_0 (4) = happyGoto action_18
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (10) = happyGoto action_5
action_0 _ = happyReduce_7

action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (19) = happyShift action_9
action_1 (21) = happyShift action_10
action_1 (23) = happyShift action_11
action_1 (25) = happyShift action_12
action_1 (26) = happyShift action_13
action_1 (27) = happyShift action_14
action_1 (29) = happyShift action_15
action_1 (42) = happyShift action_16
action_1 (46) = happyShift action_17
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 (6) = happyGoto action_4
action_1 (10) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (28) = happyShift action_19
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (20) = happyShift action_45
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (35) = happyShift action_32
action_5 (36) = happyShift action_33
action_5 (37) = happyShift action_34
action_5 (38) = happyShift action_35
action_5 (39) = happyShift action_36
action_5 (40) = happyShift action_37
action_5 (41) = happyShift action_38
action_5 (42) = happyShift action_39
action_5 (43) = happyShift action_40
action_5 (44) = happyShift action_41
action_5 (45) = happyShift action_42
action_5 (47) = happyShift action_43
action_5 (48) = happyShift action_44
action_5 _ = happyReduce_6

action_6 _ = happyReduce_35

action_7 _ = happyReduce_36

action_8 _ = happyReduce_8

action_9 _ = happyReduce_9

action_10 (29) = happyShift action_31
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (29) = happyShift action_30
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (18) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (29) = happyShift action_29
action_12 (6) = happyGoto action_28
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (29) = happyShift action_27
action_13 _ = happyReduce_37

action_14 _ = happyReduce_34

action_15 (16) = happyShift action_6
action_15 (17) = happyShift action_7
action_15 (18) = happyShift action_8
action_15 (19) = happyShift action_9
action_15 (21) = happyShift action_10
action_15 (23) = happyShift action_11
action_15 (26) = happyShift action_13
action_15 (27) = happyShift action_14
action_15 (29) = happyShift action_15
action_15 (42) = happyShift action_16
action_15 (46) = happyShift action_17
action_15 (6) = happyGoto action_23
action_15 (7) = happyGoto action_24
action_15 (10) = happyGoto action_25
action_15 (15) = happyGoto action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (16) = happyShift action_6
action_16 (17) = happyShift action_7
action_16 (21) = happyShift action_10
action_16 (23) = happyShift action_11
action_16 (26) = happyShift action_13
action_16 (27) = happyShift action_14
action_16 (29) = happyShift action_21
action_16 (42) = happyShift action_16
action_16 (46) = happyShift action_17
action_16 (10) = happyGoto action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_6
action_17 (17) = happyShift action_7
action_17 (21) = happyShift action_10
action_17 (23) = happyShift action_11
action_17 (26) = happyShift action_13
action_17 (27) = happyShift action_14
action_17 (29) = happyShift action_21
action_17 (42) = happyShift action_16
action_17 (46) = happyShift action_17
action_17 (10) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (28) = happyShift action_19
action_18 (49) = happyAccept
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (16) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (18) = happyShift action_8
action_19 (19) = happyShift action_9
action_19 (21) = happyShift action_10
action_19 (23) = happyShift action_11
action_19 (25) = happyShift action_12
action_19 (26) = happyShift action_13
action_19 (27) = happyShift action_14
action_19 (29) = happyShift action_15
action_19 (42) = happyShift action_16
action_19 (46) = happyShift action_17
action_19 (5) = happyGoto action_70
action_19 (6) = happyGoto action_4
action_19 (10) = happyGoto action_5
action_19 _ = happyReduce_7

action_20 _ = happyReduce_32

action_21 (16) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (21) = happyShift action_10
action_21 (23) = happyShift action_11
action_21 (26) = happyShift action_13
action_21 (27) = happyShift action_14
action_21 (29) = happyShift action_21
action_21 (42) = happyShift action_16
action_21 (46) = happyShift action_17
action_21 (10) = happyGoto action_25
action_21 (15) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (43) = happyShift action_40
action_22 (44) = happyShift action_41
action_22 (45) = happyShift action_42
action_22 _ = happyReduce_33

action_23 _ = happyReduce_12

action_24 (30) = happyShift action_68
action_24 (33) = happyShift action_69
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (30) = happyShift action_67
action_25 (35) = happyShift action_32
action_25 (36) = happyShift action_33
action_25 (37) = happyShift action_34
action_25 (38) = happyShift action_35
action_25 (39) = happyShift action_36
action_25 (40) = happyShift action_37
action_25 (41) = happyShift action_38
action_25 (42) = happyShift action_39
action_25 (43) = happyShift action_40
action_25 (44) = happyShift action_41
action_25 (45) = happyShift action_42
action_25 (47) = happyShift action_43
action_25 (48) = happyShift action_44
action_25 _ = happyReduce_52

action_26 (30) = happyShift action_65
action_26 (33) = happyShift action_66
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (16) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (21) = happyShift action_10
action_27 (23) = happyShift action_11
action_27 (26) = happyShift action_13
action_27 (27) = happyShift action_14
action_27 (29) = happyShift action_21
action_27 (42) = happyShift action_16
action_27 (46) = happyShift action_17
action_27 (10) = happyGoto action_63
action_27 (14) = happyGoto action_64
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (26) = happyShift action_62
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (18) = happyShift action_8
action_29 (19) = happyShift action_9
action_29 (29) = happyShift action_29
action_29 (6) = happyGoto action_23
action_29 (7) = happyGoto action_24
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (16) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (21) = happyShift action_10
action_30 (23) = happyShift action_11
action_30 (26) = happyShift action_13
action_30 (27) = happyShift action_14
action_30 (29) = happyShift action_21
action_30 (42) = happyShift action_16
action_30 (46) = happyShift action_17
action_30 (10) = happyGoto action_61
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (21) = happyShift action_10
action_31 (23) = happyShift action_11
action_31 (26) = happyShift action_13
action_31 (27) = happyShift action_14
action_31 (29) = happyShift action_21
action_31 (42) = happyShift action_16
action_31 (46) = happyShift action_17
action_31 (10) = happyGoto action_60
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (16) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (21) = happyShift action_10
action_32 (23) = happyShift action_11
action_32 (26) = happyShift action_13
action_32 (27) = happyShift action_14
action_32 (29) = happyShift action_21
action_32 (42) = happyShift action_16
action_32 (46) = happyShift action_17
action_32 (10) = happyGoto action_59
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (16) = happyShift action_6
action_33 (17) = happyShift action_7
action_33 (21) = happyShift action_10
action_33 (23) = happyShift action_11
action_33 (26) = happyShift action_13
action_33 (27) = happyShift action_14
action_33 (29) = happyShift action_21
action_33 (42) = happyShift action_16
action_33 (46) = happyShift action_17
action_33 (10) = happyGoto action_58
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (16) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (21) = happyShift action_10
action_34 (23) = happyShift action_11
action_34 (26) = happyShift action_13
action_34 (27) = happyShift action_14
action_34 (29) = happyShift action_21
action_34 (42) = happyShift action_16
action_34 (46) = happyShift action_17
action_34 (10) = happyGoto action_57
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (16) = happyShift action_6
action_35 (17) = happyShift action_7
action_35 (21) = happyShift action_10
action_35 (23) = happyShift action_11
action_35 (26) = happyShift action_13
action_35 (27) = happyShift action_14
action_35 (29) = happyShift action_21
action_35 (42) = happyShift action_16
action_35 (46) = happyShift action_17
action_35 (10) = happyGoto action_56
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_6
action_36 (17) = happyShift action_7
action_36 (21) = happyShift action_10
action_36 (23) = happyShift action_11
action_36 (26) = happyShift action_13
action_36 (27) = happyShift action_14
action_36 (29) = happyShift action_21
action_36 (42) = happyShift action_16
action_36 (46) = happyShift action_17
action_36 (10) = happyGoto action_55
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_6
action_37 (17) = happyShift action_7
action_37 (21) = happyShift action_10
action_37 (23) = happyShift action_11
action_37 (26) = happyShift action_13
action_37 (27) = happyShift action_14
action_37 (29) = happyShift action_21
action_37 (42) = happyShift action_16
action_37 (46) = happyShift action_17
action_37 (10) = happyGoto action_54
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (16) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (21) = happyShift action_10
action_38 (23) = happyShift action_11
action_38 (26) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (29) = happyShift action_21
action_38 (42) = happyShift action_16
action_38 (46) = happyShift action_17
action_38 (10) = happyGoto action_53
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (16) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (21) = happyShift action_10
action_39 (23) = happyShift action_11
action_39 (26) = happyShift action_13
action_39 (27) = happyShift action_14
action_39 (29) = happyShift action_21
action_39 (42) = happyShift action_16
action_39 (46) = happyShift action_17
action_39 (10) = happyGoto action_52
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_6
action_40 (17) = happyShift action_7
action_40 (21) = happyShift action_10
action_40 (23) = happyShift action_11
action_40 (26) = happyShift action_13
action_40 (27) = happyShift action_14
action_40 (29) = happyShift action_21
action_40 (42) = happyShift action_16
action_40 (46) = happyShift action_17
action_40 (10) = happyGoto action_51
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (21) = happyShift action_10
action_41 (23) = happyShift action_11
action_41 (26) = happyShift action_13
action_41 (27) = happyShift action_14
action_41 (29) = happyShift action_21
action_41 (42) = happyShift action_16
action_41 (46) = happyShift action_17
action_41 (10) = happyGoto action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_6
action_42 (17) = happyShift action_7
action_42 (21) = happyShift action_10
action_42 (23) = happyShift action_11
action_42 (26) = happyShift action_13
action_42 (27) = happyShift action_14
action_42 (29) = happyShift action_21
action_42 (42) = happyShift action_16
action_42 (46) = happyShift action_17
action_42 (10) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (16) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (21) = happyShift action_10
action_43 (23) = happyShift action_11
action_43 (26) = happyShift action_13
action_43 (27) = happyShift action_14
action_43 (29) = happyShift action_21
action_43 (42) = happyShift action_16
action_43 (46) = happyShift action_17
action_43 (10) = happyGoto action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_6
action_44 (17) = happyShift action_7
action_44 (21) = happyShift action_10
action_44 (23) = happyShift action_11
action_44 (26) = happyShift action_13
action_44 (27) = happyShift action_14
action_44 (29) = happyShift action_21
action_44 (42) = happyShift action_16
action_44 (46) = happyShift action_17
action_44 (10) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (29) = happyShift action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (18) = happyShift action_8
action_46 (19) = happyShift action_9
action_46 (29) = happyShift action_29
action_46 (6) = happyGoto action_78
action_46 (8) = happyGoto action_79
action_46 (9) = happyGoto action_80
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (37) = happyFail []
action_47 (38) = happyFail []
action_47 (41) = happyShift action_38
action_47 (42) = happyShift action_39
action_47 (43) = happyShift action_40
action_47 (44) = happyShift action_41
action_47 (45) = happyShift action_42
action_47 (47) = happyFail []
action_47 (48) = happyFail []
action_47 _ = happyReduce_24

action_48 (37) = happyFail []
action_48 (38) = happyFail []
action_48 (41) = happyShift action_38
action_48 (42) = happyShift action_39
action_48 (43) = happyShift action_40
action_48 (44) = happyShift action_41
action_48 (45) = happyShift action_42
action_48 (47) = happyFail []
action_48 (48) = happyFail []
action_48 _ = happyReduce_23

action_49 _ = happyReduce_31

action_50 _ = happyReduce_30

action_51 _ = happyReduce_29

action_52 (43) = happyShift action_40
action_52 (44) = happyShift action_41
action_52 (45) = happyShift action_42
action_52 _ = happyReduce_28

action_53 (43) = happyShift action_40
action_53 (44) = happyShift action_41
action_53 (45) = happyShift action_42
action_53 _ = happyReduce_27

action_54 (35) = happyShift action_32
action_54 (36) = happyShift action_33
action_54 (37) = happyShift action_34
action_54 (38) = happyShift action_35
action_54 (39) = happyShift action_36
action_54 (41) = happyShift action_38
action_54 (42) = happyShift action_39
action_54 (43) = happyShift action_40
action_54 (44) = happyShift action_41
action_54 (45) = happyShift action_42
action_54 (47) = happyShift action_43
action_54 (48) = happyShift action_44
action_54 _ = happyReduce_26

action_55 (35) = happyShift action_32
action_55 (36) = happyShift action_33
action_55 (37) = happyShift action_34
action_55 (38) = happyShift action_35
action_55 (41) = happyShift action_38
action_55 (42) = happyShift action_39
action_55 (43) = happyShift action_40
action_55 (44) = happyShift action_41
action_55 (45) = happyShift action_42
action_55 (47) = happyShift action_43
action_55 (48) = happyShift action_44
action_55 _ = happyReduce_25

action_56 (37) = happyFail []
action_56 (38) = happyFail []
action_56 (41) = happyShift action_38
action_56 (42) = happyShift action_39
action_56 (43) = happyShift action_40
action_56 (44) = happyShift action_41
action_56 (45) = happyShift action_42
action_56 (47) = happyFail []
action_56 (48) = happyFail []
action_56 _ = happyReduce_22

action_57 (37) = happyFail []
action_57 (38) = happyFail []
action_57 (41) = happyShift action_38
action_57 (42) = happyShift action_39
action_57 (43) = happyShift action_40
action_57 (44) = happyShift action_41
action_57 (45) = happyShift action_42
action_57 (47) = happyFail []
action_57 (48) = happyFail []
action_57 _ = happyReduce_21

action_58 (35) = happyFail []
action_58 (36) = happyFail []
action_58 (37) = happyShift action_34
action_58 (38) = happyShift action_35
action_58 (41) = happyShift action_38
action_58 (42) = happyShift action_39
action_58 (43) = happyShift action_40
action_58 (44) = happyShift action_41
action_58 (45) = happyShift action_42
action_58 (47) = happyShift action_43
action_58 (48) = happyShift action_44
action_58 _ = happyReduce_20

action_59 (35) = happyFail []
action_59 (36) = happyFail []
action_59 (37) = happyShift action_34
action_59 (38) = happyShift action_35
action_59 (41) = happyShift action_38
action_59 (42) = happyShift action_39
action_59 (43) = happyShift action_40
action_59 (44) = happyShift action_41
action_59 (45) = happyShift action_42
action_59 (47) = happyShift action_43
action_59 (48) = happyShift action_44
action_59 _ = happyReduce_19

action_60 (30) = happyShift action_77
action_60 (35) = happyShift action_32
action_60 (36) = happyShift action_33
action_60 (37) = happyShift action_34
action_60 (38) = happyShift action_35
action_60 (39) = happyShift action_36
action_60 (40) = happyShift action_37
action_60 (41) = happyShift action_38
action_60 (42) = happyShift action_39
action_60 (43) = happyShift action_40
action_60 (44) = happyShift action_41
action_60 (45) = happyShift action_42
action_60 (47) = happyShift action_43
action_60 (48) = happyShift action_44
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (30) = happyShift action_76
action_61 (35) = happyShift action_32
action_61 (36) = happyShift action_33
action_61 (37) = happyShift action_34
action_61 (38) = happyShift action_35
action_61 (39) = happyShift action_36
action_61 (40) = happyShift action_37
action_61 (41) = happyShift action_38
action_61 (42) = happyShift action_39
action_61 (43) = happyShift action_40
action_61 (44) = happyShift action_41
action_61 (45) = happyShift action_42
action_61 (47) = happyShift action_43
action_61 (48) = happyShift action_44
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (16) = happyShift action_6
action_62 (17) = happyShift action_7
action_62 (21) = happyShift action_10
action_62 (23) = happyShift action_11
action_62 (26) = happyShift action_13
action_62 (27) = happyShift action_14
action_62 (29) = happyShift action_21
action_62 (42) = happyShift action_16
action_62 (46) = happyShift action_17
action_62 (10) = happyGoto action_75
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (35) = happyShift action_32
action_63 (36) = happyShift action_33
action_63 (37) = happyShift action_34
action_63 (38) = happyShift action_35
action_63 (39) = happyShift action_36
action_63 (40) = happyShift action_37
action_63 (41) = happyShift action_38
action_63 (42) = happyShift action_39
action_63 (43) = happyShift action_40
action_63 (44) = happyShift action_41
action_63 (45) = happyShift action_42
action_63 (47) = happyShift action_43
action_63 (48) = happyShift action_44
action_63 _ = happyReduce_50

action_64 (30) = happyShift action_73
action_64 (33) = happyShift action_74
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_40

action_66 (16) = happyShift action_6
action_66 (17) = happyShift action_7
action_66 (21) = happyShift action_10
action_66 (23) = happyShift action_11
action_66 (26) = happyShift action_13
action_66 (27) = happyShift action_14
action_66 (29) = happyShift action_21
action_66 (42) = happyShift action_16
action_66 (46) = happyShift action_17
action_66 (10) = happyGoto action_72
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_39

action_68 _ = happyReduce_10

action_69 (18) = happyShift action_8
action_69 (19) = happyShift action_9
action_69 (29) = happyShift action_29
action_69 (6) = happyGoto action_71
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_1

action_71 _ = happyReduce_11

action_72 (35) = happyShift action_32
action_72 (36) = happyShift action_33
action_72 (37) = happyShift action_34
action_72 (38) = happyShift action_35
action_72 (39) = happyShift action_36
action_72 (40) = happyShift action_37
action_72 (41) = happyShift action_38
action_72 (42) = happyShift action_39
action_72 (43) = happyShift action_40
action_72 (44) = happyShift action_41
action_72 (45) = happyShift action_42
action_72 (47) = happyShift action_43
action_72 (48) = happyShift action_44
action_72 _ = happyReduce_51

action_73 _ = happyReduce_38

action_74 (16) = happyShift action_6
action_74 (17) = happyShift action_7
action_74 (21) = happyShift action_10
action_74 (23) = happyShift action_11
action_74 (26) = happyShift action_13
action_74 (27) = happyShift action_14
action_74 (29) = happyShift action_21
action_74 (42) = happyShift action_16
action_74 (46) = happyShift action_17
action_74 (10) = happyGoto action_86
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (35) = happyShift action_32
action_75 (36) = happyShift action_33
action_75 (37) = happyShift action_34
action_75 (38) = happyShift action_35
action_75 (39) = happyShift action_36
action_75 (40) = happyShift action_37
action_75 (41) = happyShift action_38
action_75 (42) = happyShift action_39
action_75 (43) = happyShift action_40
action_75 (44) = happyShift action_41
action_75 (45) = happyShift action_42
action_75 (47) = happyShift action_43
action_75 (48) = happyShift action_44
action_75 _ = happyReduce_4

action_76 (16) = happyShift action_6
action_76 (17) = happyShift action_7
action_76 (21) = happyShift action_10
action_76 (23) = happyShift action_11
action_76 (26) = happyShift action_13
action_76 (27) = happyShift action_14
action_76 (29) = happyShift action_21
action_76 (42) = happyShift action_16
action_76 (46) = happyShift action_17
action_76 (10) = happyGoto action_85
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (31) = happyShift action_84
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (26) = happyShift action_83
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (30) = happyShift action_81
action_79 (33) = happyShift action_82
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_14

action_81 (26) = happyShift action_94
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (18) = happyShift action_8
action_82 (19) = happyShift action_9
action_82 (29) = happyShift action_29
action_82 (6) = happyGoto action_78
action_82 (9) = happyGoto action_93
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_15

action_84 (16) = happyShift action_6
action_84 (17) = happyShift action_7
action_84 (21) = happyShift action_10
action_84 (22) = happyShift action_92
action_84 (23) = happyShift action_11
action_84 (26) = happyShift action_13
action_84 (27) = happyShift action_14
action_84 (28) = happyReduce_46
action_84 (29) = happyShift action_21
action_84 (32) = happyReduce_46
action_84 (42) = happyShift action_16
action_84 (46) = happyShift action_17
action_84 (10) = happyGoto action_88
action_84 (11) = happyGoto action_89
action_84 (12) = happyGoto action_90
action_84 (13) = happyGoto action_91
action_84 _ = happyReduce_46

action_85 (24) = happyShift action_87
action_85 (35) = happyShift action_32
action_85 (36) = happyShift action_33
action_85 (37) = happyShift action_34
action_85 (38) = happyShift action_35
action_85 (39) = happyShift action_36
action_85 (40) = happyShift action_37
action_85 (41) = happyShift action_38
action_85 (42) = happyShift action_39
action_85 (43) = happyShift action_40
action_85 (44) = happyShift action_41
action_85 (45) = happyShift action_42
action_85 (47) = happyShift action_43
action_85 (48) = happyShift action_44
action_85 _ = happyReduce_16

action_86 (35) = happyShift action_32
action_86 (36) = happyShift action_33
action_86 (37) = happyShift action_34
action_86 (38) = happyShift action_35
action_86 (39) = happyShift action_36
action_86 (40) = happyShift action_37
action_86 (41) = happyShift action_38
action_86 (42) = happyShift action_39
action_86 (43) = happyShift action_40
action_86 (44) = happyShift action_41
action_86 (45) = happyShift action_42
action_86 (47) = happyShift action_43
action_86 (48) = happyShift action_44
action_86 _ = happyReduce_49

action_87 (16) = happyShift action_6
action_87 (17) = happyShift action_7
action_87 (21) = happyShift action_10
action_87 (23) = happyShift action_11
action_87 (26) = happyShift action_13
action_87 (27) = happyShift action_14
action_87 (29) = happyShift action_21
action_87 (42) = happyShift action_16
action_87 (46) = happyShift action_17
action_87 (10) = happyGoto action_101
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (35) = happyShift action_32
action_88 (36) = happyShift action_33
action_88 (37) = happyShift action_34
action_88 (38) = happyShift action_35
action_88 (39) = happyShift action_36
action_88 (40) = happyShift action_37
action_88 (41) = happyShift action_38
action_88 (42) = happyShift action_39
action_88 (43) = happyShift action_40
action_88 (44) = happyShift action_41
action_88 (45) = happyShift action_42
action_88 (47) = happyShift action_43
action_88 (48) = happyShift action_44
action_88 _ = happyReduce_48

action_89 (28) = happyShift action_99
action_89 (32) = happyShift action_100
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_42

action_91 (33) = happyShift action_97
action_91 (34) = happyShift action_98
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (34) = happyShift action_96
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_13

action_94 (16) = happyShift action_6
action_94 (17) = happyShift action_7
action_94 (21) = happyShift action_10
action_94 (23) = happyShift action_11
action_94 (26) = happyShift action_13
action_94 (27) = happyShift action_14
action_94 (29) = happyShift action_21
action_94 (42) = happyShift action_16
action_94 (46) = happyShift action_17
action_94 (10) = happyGoto action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (35) = happyShift action_32
action_95 (36) = happyShift action_33
action_95 (37) = happyShift action_34
action_95 (38) = happyShift action_35
action_95 (39) = happyShift action_36
action_95 (40) = happyShift action_37
action_95 (41) = happyShift action_38
action_95 (42) = happyShift action_39
action_95 (43) = happyShift action_40
action_95 (44) = happyShift action_41
action_95 (45) = happyShift action_42
action_95 (47) = happyShift action_43
action_95 (48) = happyShift action_44
action_95 _ = happyReduce_5

action_96 (16) = happyShift action_6
action_96 (17) = happyShift action_7
action_96 (21) = happyShift action_10
action_96 (23) = happyShift action_11
action_96 (26) = happyShift action_13
action_96 (27) = happyShift action_14
action_96 (29) = happyShift action_21
action_96 (42) = happyShift action_16
action_96 (46) = happyShift action_17
action_96 (10) = happyGoto action_105
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (16) = happyShift action_6
action_97 (17) = happyShift action_7
action_97 (21) = happyShift action_10
action_97 (23) = happyShift action_11
action_97 (26) = happyShift action_13
action_97 (27) = happyShift action_14
action_97 (29) = happyShift action_21
action_97 (42) = happyShift action_16
action_97 (46) = happyShift action_17
action_97 (10) = happyGoto action_104
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (16) = happyShift action_6
action_98 (17) = happyShift action_7
action_98 (21) = happyShift action_10
action_98 (23) = happyShift action_11
action_98 (26) = happyShift action_13
action_98 (27) = happyShift action_14
action_98 (29) = happyShift action_21
action_98 (42) = happyShift action_16
action_98 (46) = happyShift action_17
action_98 (10) = happyGoto action_103
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (16) = happyShift action_6
action_99 (17) = happyShift action_7
action_99 (21) = happyShift action_10
action_99 (22) = happyShift action_92
action_99 (23) = happyShift action_11
action_99 (26) = happyShift action_13
action_99 (27) = happyShift action_14
action_99 (29) = happyShift action_21
action_99 (42) = happyShift action_16
action_99 (46) = happyShift action_17
action_99 (10) = happyGoto action_88
action_99 (12) = happyGoto action_102
action_99 (13) = happyGoto action_91
action_99 _ = happyReduce_46

action_100 _ = happyReduce_18

action_101 (35) = happyShift action_32
action_101 (36) = happyShift action_33
action_101 (37) = happyShift action_34
action_101 (38) = happyShift action_35
action_101 (39) = happyShift action_36
action_101 (40) = happyShift action_37
action_101 (41) = happyShift action_38
action_101 (42) = happyShift action_39
action_101 (43) = happyShift action_40
action_101 (44) = happyShift action_41
action_101 (45) = happyShift action_42
action_101 (47) = happyShift action_43
action_101 (48) = happyShift action_44
action_101 _ = happyReduce_17

action_102 _ = happyReduce_41

action_103 (35) = happyShift action_32
action_103 (36) = happyShift action_33
action_103 (37) = happyShift action_34
action_103 (38) = happyShift action_35
action_103 (39) = happyShift action_36
action_103 (40) = happyShift action_37
action_103 (41) = happyShift action_38
action_103 (42) = happyShift action_39
action_103 (43) = happyShift action_40
action_103 (44) = happyShift action_41
action_103 (45) = happyShift action_42
action_103 (47) = happyShift action_43
action_103 (48) = happyShift action_44
action_103 _ = happyReduce_44

action_104 (35) = happyShift action_32
action_104 (36) = happyShift action_33
action_104 (37) = happyShift action_34
action_104 (38) = happyShift action_35
action_104 (39) = happyShift action_36
action_104 (40) = happyShift action_37
action_104 (41) = happyShift action_38
action_104 (42) = happyShift action_39
action_104 (43) = happyShift action_40
action_104 (44) = happyShift action_41
action_104 (45) = happyShift action_42
action_104 (47) = happyShift action_43
action_104 (48) = happyShift action_44
action_104 _ = happyReduce_47

action_105 (35) = happyShift action_32
action_105 (36) = happyShift action_33
action_105 (37) = happyShift action_34
action_105 (38) = happyShift action_35
action_105 (39) = happyShift action_36
action_105 (40) = happyShift action_37
action_105 (41) = happyShift action_38
action_105 (42) = happyShift action_39
action_105 (43) = happyShift action_40
action_105 (44) = happyShift action_41
action_105 (45) = happyShift action_42
action_105 (47) = happyShift action_43
action_105 (48) = happyShift action_44
action_105 _ = happyReduce_45

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_3 : happy_var_1
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_0  4 happyReduction_3
happyReduction_3  =  HappyAbsSyn4
		 ([]
	)

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent happy_var_3)) `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Cnst happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 7 5 happyReduction_5
happyReduction_5 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	(HappyTerminal (TIdent happy_var_6)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Fct happy_var_1 happy_var_4 happy_var_6 happy_var_7
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (WildExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_0  5 happyReduction_7
happyReduction_7  =  HappyAbsSyn5
		 (EmptyLine
	)

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn6
		 (IntT
	)

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn6
		 (BoolT
	)

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TupleT happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  7 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  9 happyReduction_15
happyReduction_15 (HappyTerminal (TIdent happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (Param happy_var_1 happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 5 10 happyReduction_16
happyReduction_16 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 10 happyReduction_17
happyReduction_17 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 7 10 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Handle happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (BelowEqual happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (AboveEqual happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Below happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Above happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Div happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  10 happyReduction_31
happyReduction_31 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Rest happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  10 happyReduction_32
happyReduction_32 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Not happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  10 happyReduction_33
happyReduction_33 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Neg happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  10 happyReduction_34
happyReduction_34 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn10
		 (Integer happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  10 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn10
		 (Boolean True
	)

happyReduce_36 = happySpecReduce_1  10 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn10
		 (Boolean False
	)

happyReduce_37 = happySpecReduce_1  10 happyReduction_37
happyReduction_37 (HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn10
		 (Symbol happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 10 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (FSymbol happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  10 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Parent happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  10 happyReduction_40
happyReduction_40 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Tuple happy_var_2
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  11 happyReduction_42
happyReduction_42 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_0  11 happyReduction_43
happyReduction_43  =  HappyAbsSyn11
		 ([]
	)

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Case happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  12 happyReduction_45
happyReduction_45 (HappyAbsSyn10  happy_var_3)
	_
	_
	 =  HappyAbsSyn12
		 (Trivial happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  12 happyReduction_46
happyReduction_46  =  HappyAbsSyn12
		 (Empty
	)

happyReduce_47 = happySpecReduce_3  13 happyReduction_47
happyReduction_47 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  13 happyReduction_48
happyReduction_48 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  14 happyReduction_49
happyReduction_49 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_3 : happy_var_1
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  14 happyReduction_50
happyReduction_50 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  15 happyReduction_51
happyReduction_51 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  15 happyReduction_52
happyReduction_52 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_52 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 49 49 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TTrue -> cont 16;
	TFalse -> cont 17;
	TInt -> cont 18;
	TBool -> cont 19;
	TFunc -> cont 20;
	THandle -> cont 21;
	TTrivial -> cont 22;
	TIf -> cont 23;
	TOtherwise -> cont 24;
	TFixed -> cont 25;
	TIdent happy_dollar_dollar -> cont 26;
	TNum happy_dollar_dollar -> cont 27;
	TInstrEnd -> cont 28;
	TParL -> cont 29;
	TParR -> cont 30;
	TBL -> cont 31;
	TBR -> cont 32;
	TComma -> cont 33;
	TArrow -> cont 34;
	TOp "=" -> cont 35;
	TOp "=/=" -> cont 36;
	TOp "<=" -> cont 37;
	TOp ">=" -> cont 38;
	TOp "&" -> cont 39;
	TOp "|" -> cont 40;
	TOp "+" -> cont 41;
	TOp "-" -> cont 42;
	TOp "*" -> cont 43;
	TOp "/" -> cont 44;
	TOp "%" -> cont 45;
	TOp "!" -> cont 46;
	TOp "<" -> cont 47;
	TOp ">" -> cont 48;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 49 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Instr
    = Cnst Type String Expr
    | Fct Type [Parameter] String Expr
    | WildExpr Expr
    | EmptyLine
  deriving Show

data Expr
    = If Expr Expr
    | IfElse Expr Expr Expr
    | Handle Expr [Handler]
    | Equal Expr Expr
    | NotEqual Expr Expr
    | BelowEqual Expr Expr
    | AboveEqual Expr Expr
    | Below Expr Expr
    | Above Expr Expr
    | And Expr Expr
    | Or Expr Expr
    | Plus Expr Expr
    | Sub Expr Expr
    | Mult Expr Expr
    | Div Expr Expr
    | Rest Expr Expr
    | Not Expr
    | Neg Expr
    | Integer Int
    | Boolean Bool
    | Symbol String
    | FSymbol String [Expr]
    | Parent Expr
    | Tuple [Expr]
  deriving Show

data Handler
    = Case [Expr] Expr
    | Trivial Expr
    | Empty
  deriving Show

data Type
    = IntT
    | BoolT
    | TupleT [Type]
  deriving Show

data Parameter
    = Param Type String
  deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
