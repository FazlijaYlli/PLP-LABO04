{-# OPTIONS_GHC -w #-}
{-
  Auteurs : Rui Manuel Mota Carneiro & Ylli Fazlija
-}
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
happyExpList = Happy_Data_Array.listArray (0,266) ([32768,6007,8704,0,12015,17408,0,8192,0,0,0,0,0,128,0,0,0,65408,27,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,256,0,49152,512,0,0,1024,0,0,0,0,32768,5751,8704,0,11491,17408,0,22982,34816,0,16384,0,0,30584,8193,2,0,0,0,40032,32773,8,0,0,14,0,0,0,0,576,0,0,61440,895,0,2304,0,6144,359,544,0,64,0,32768,1025,0,49152,2872,4352,32768,5745,8704,0,11491,17408,0,22982,34816,0,45964,4096,1,26392,8193,2,52784,16386,4,40032,32773,8,14528,11,17,29056,22,34,58112,44,68,50688,89,136,35840,179,272,6144,359,544,12288,718,1088,0,1024,0,0,2051,0,0,0,7936,0,0,15872,0,0,0,0,0,0,0,0,0,0,0,32768,3,0,0,7,0,48640,111,0,15360,223,0,0,62,0,0,124,0,32768,1785,0,0,3571,0,33792,7167,0,2048,14335,49152,2872,4352,0,0,57340,0,16384,2,0,0,0,0,45964,4096,1,0,0,0,0,0,0,384,4,0,0,0,0,0,0,0,0,63488,447,0,0,0,35840,179,272,0,49152,3583,12288,718,1088,0,4096,0,0,256,0,0,8192,1,0,0,0,0,2048,0,0,32816,0,0,0,0,0,52784,16386,4,0,0,0,0,65024,111,29056,22,34,0,63488,447,0,544,0,0,0,0,0,12288,0,0,0,0,24576,1436,2176,0,0,28670,32768,5745,8704,0,11491,17408,0,22982,34816,0,0,0,0,0,0,0,0,0,0,0,65280,55,0,65024,111,0
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
action_0 (22) = happyShift action_11
action_0 (23) = happyShift action_12
action_0 (25) = happyShift action_13
action_0 (26) = happyShift action_14
action_0 (27) = happyShift action_15
action_0 (29) = happyShift action_16
action_0 (42) = happyShift action_17
action_0 (46) = happyShift action_18
action_0 (4) = happyGoto action_19
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (10) = happyGoto action_5
action_0 _ = happyReduce_6

action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (19) = happyShift action_9
action_1 (21) = happyShift action_10
action_1 (22) = happyShift action_11
action_1 (23) = happyShift action_12
action_1 (25) = happyShift action_13
action_1 (26) = happyShift action_14
action_1 (27) = happyShift action_15
action_1 (29) = happyShift action_16
action_1 (42) = happyShift action_17
action_1 (46) = happyShift action_18
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 (6) = happyGoto action_4
action_1 (10) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (28) = happyShift action_20
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (20) = happyShift action_46
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (35) = happyShift action_33
action_5 (36) = happyShift action_34
action_5 (37) = happyShift action_35
action_5 (38) = happyShift action_36
action_5 (39) = happyShift action_37
action_5 (40) = happyShift action_38
action_5 (41) = happyShift action_39
action_5 (42) = happyShift action_40
action_5 (43) = happyShift action_41
action_5 (44) = happyShift action_42
action_5 (45) = happyShift action_43
action_5 (47) = happyShift action_44
action_5 (48) = happyShift action_45
action_5 _ = happyReduce_5

action_6 _ = happyReduce_34

action_7 _ = happyReduce_35

action_8 _ = happyReduce_7

action_9 _ = happyReduce_8

action_10 (29) = happyShift action_32
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_40

action_12 (29) = happyShift action_31
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (18) = happyShift action_8
action_13 (19) = happyShift action_9
action_13 (29) = happyShift action_30
action_13 (6) = happyGoto action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (29) = happyShift action_28
action_14 _ = happyReduce_36

action_15 _ = happyReduce_33

action_16 (16) = happyShift action_6
action_16 (17) = happyShift action_7
action_16 (18) = happyShift action_8
action_16 (19) = happyShift action_9
action_16 (21) = happyShift action_10
action_16 (22) = happyShift action_11
action_16 (23) = happyShift action_12
action_16 (26) = happyShift action_14
action_16 (27) = happyShift action_15
action_16 (29) = happyShift action_16
action_16 (42) = happyShift action_17
action_16 (46) = happyShift action_18
action_16 (6) = happyGoto action_24
action_16 (7) = happyGoto action_25
action_16 (10) = happyGoto action_26
action_16 (15) = happyGoto action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_6
action_17 (17) = happyShift action_7
action_17 (21) = happyShift action_10
action_17 (22) = happyShift action_11
action_17 (23) = happyShift action_12
action_17 (26) = happyShift action_14
action_17 (27) = happyShift action_15
action_17 (29) = happyShift action_22
action_17 (42) = happyShift action_17
action_17 (46) = happyShift action_18
action_17 (10) = happyGoto action_23
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (21) = happyShift action_10
action_18 (22) = happyShift action_11
action_18 (23) = happyShift action_12
action_18 (26) = happyShift action_14
action_18 (27) = happyShift action_15
action_18 (29) = happyShift action_22
action_18 (42) = happyShift action_17
action_18 (46) = happyShift action_18
action_18 (10) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_20
action_19 (49) = happyAccept
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (16) = happyShift action_6
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_8
action_20 (19) = happyShift action_9
action_20 (21) = happyShift action_10
action_20 (22) = happyShift action_11
action_20 (23) = happyShift action_12
action_20 (25) = happyShift action_13
action_20 (26) = happyShift action_14
action_20 (27) = happyShift action_15
action_20 (29) = happyShift action_16
action_20 (42) = happyShift action_17
action_20 (46) = happyShift action_18
action_20 (5) = happyGoto action_71
action_20 (6) = happyGoto action_4
action_20 (10) = happyGoto action_5
action_20 _ = happyReduce_6

action_21 _ = happyReduce_31

action_22 (16) = happyShift action_6
action_22 (17) = happyShift action_7
action_22 (21) = happyShift action_10
action_22 (22) = happyShift action_11
action_22 (23) = happyShift action_12
action_22 (26) = happyShift action_14
action_22 (27) = happyShift action_15
action_22 (29) = happyShift action_22
action_22 (42) = happyShift action_17
action_22 (46) = happyShift action_18
action_22 (10) = happyGoto action_26
action_22 (15) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (43) = happyShift action_41
action_23 (44) = happyShift action_42
action_23 (45) = happyShift action_43
action_23 _ = happyReduce_32

action_24 _ = happyReduce_11

action_25 (30) = happyShift action_69
action_25 (33) = happyShift action_70
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (30) = happyShift action_68
action_26 (35) = happyShift action_33
action_26 (36) = happyShift action_34
action_26 (37) = happyShift action_35
action_26 (38) = happyShift action_36
action_26 (39) = happyShift action_37
action_26 (40) = happyShift action_38
action_26 (41) = happyShift action_39
action_26 (42) = happyShift action_40
action_26 (43) = happyShift action_41
action_26 (44) = happyShift action_42
action_26 (45) = happyShift action_43
action_26 (47) = happyShift action_44
action_26 (48) = happyShift action_45
action_26 _ = happyReduce_50

action_27 (30) = happyShift action_66
action_27 (33) = happyShift action_67
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (16) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (21) = happyShift action_10
action_28 (22) = happyShift action_11
action_28 (23) = happyShift action_12
action_28 (26) = happyShift action_14
action_28 (27) = happyShift action_15
action_28 (29) = happyShift action_22
action_28 (42) = happyShift action_17
action_28 (46) = happyShift action_18
action_28 (10) = happyGoto action_64
action_28 (14) = happyGoto action_65
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (26) = happyShift action_63
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (18) = happyShift action_8
action_30 (19) = happyShift action_9
action_30 (29) = happyShift action_30
action_30 (6) = happyGoto action_24
action_30 (7) = happyGoto action_25
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (21) = happyShift action_10
action_31 (22) = happyShift action_11
action_31 (23) = happyShift action_12
action_31 (26) = happyShift action_14
action_31 (27) = happyShift action_15
action_31 (29) = happyShift action_22
action_31 (42) = happyShift action_17
action_31 (46) = happyShift action_18
action_31 (10) = happyGoto action_62
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (16) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (21) = happyShift action_10
action_32 (22) = happyShift action_11
action_32 (23) = happyShift action_12
action_32 (26) = happyShift action_14
action_32 (27) = happyShift action_15
action_32 (29) = happyShift action_22
action_32 (42) = happyShift action_17
action_32 (46) = happyShift action_18
action_32 (10) = happyGoto action_61
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (16) = happyShift action_6
action_33 (17) = happyShift action_7
action_33 (21) = happyShift action_10
action_33 (22) = happyShift action_11
action_33 (23) = happyShift action_12
action_33 (26) = happyShift action_14
action_33 (27) = happyShift action_15
action_33 (29) = happyShift action_22
action_33 (42) = happyShift action_17
action_33 (46) = happyShift action_18
action_33 (10) = happyGoto action_60
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (16) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (21) = happyShift action_10
action_34 (22) = happyShift action_11
action_34 (23) = happyShift action_12
action_34 (26) = happyShift action_14
action_34 (27) = happyShift action_15
action_34 (29) = happyShift action_22
action_34 (42) = happyShift action_17
action_34 (46) = happyShift action_18
action_34 (10) = happyGoto action_59
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (16) = happyShift action_6
action_35 (17) = happyShift action_7
action_35 (21) = happyShift action_10
action_35 (22) = happyShift action_11
action_35 (23) = happyShift action_12
action_35 (26) = happyShift action_14
action_35 (27) = happyShift action_15
action_35 (29) = happyShift action_22
action_35 (42) = happyShift action_17
action_35 (46) = happyShift action_18
action_35 (10) = happyGoto action_58
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_6
action_36 (17) = happyShift action_7
action_36 (21) = happyShift action_10
action_36 (22) = happyShift action_11
action_36 (23) = happyShift action_12
action_36 (26) = happyShift action_14
action_36 (27) = happyShift action_15
action_36 (29) = happyShift action_22
action_36 (42) = happyShift action_17
action_36 (46) = happyShift action_18
action_36 (10) = happyGoto action_57
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (16) = happyShift action_6
action_37 (17) = happyShift action_7
action_37 (21) = happyShift action_10
action_37 (22) = happyShift action_11
action_37 (23) = happyShift action_12
action_37 (26) = happyShift action_14
action_37 (27) = happyShift action_15
action_37 (29) = happyShift action_22
action_37 (42) = happyShift action_17
action_37 (46) = happyShift action_18
action_37 (10) = happyGoto action_56
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (16) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (21) = happyShift action_10
action_38 (22) = happyShift action_11
action_38 (23) = happyShift action_12
action_38 (26) = happyShift action_14
action_38 (27) = happyShift action_15
action_38 (29) = happyShift action_22
action_38 (42) = happyShift action_17
action_38 (46) = happyShift action_18
action_38 (10) = happyGoto action_55
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (16) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (21) = happyShift action_10
action_39 (22) = happyShift action_11
action_39 (23) = happyShift action_12
action_39 (26) = happyShift action_14
action_39 (27) = happyShift action_15
action_39 (29) = happyShift action_22
action_39 (42) = happyShift action_17
action_39 (46) = happyShift action_18
action_39 (10) = happyGoto action_54
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_6
action_40 (17) = happyShift action_7
action_40 (21) = happyShift action_10
action_40 (22) = happyShift action_11
action_40 (23) = happyShift action_12
action_40 (26) = happyShift action_14
action_40 (27) = happyShift action_15
action_40 (29) = happyShift action_22
action_40 (42) = happyShift action_17
action_40 (46) = happyShift action_18
action_40 (10) = happyGoto action_53
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (21) = happyShift action_10
action_41 (22) = happyShift action_11
action_41 (23) = happyShift action_12
action_41 (26) = happyShift action_14
action_41 (27) = happyShift action_15
action_41 (29) = happyShift action_22
action_41 (42) = happyShift action_17
action_41 (46) = happyShift action_18
action_41 (10) = happyGoto action_52
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_6
action_42 (17) = happyShift action_7
action_42 (21) = happyShift action_10
action_42 (22) = happyShift action_11
action_42 (23) = happyShift action_12
action_42 (26) = happyShift action_14
action_42 (27) = happyShift action_15
action_42 (29) = happyShift action_22
action_42 (42) = happyShift action_17
action_42 (46) = happyShift action_18
action_42 (10) = happyGoto action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (16) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (21) = happyShift action_10
action_43 (22) = happyShift action_11
action_43 (23) = happyShift action_12
action_43 (26) = happyShift action_14
action_43 (27) = happyShift action_15
action_43 (29) = happyShift action_22
action_43 (42) = happyShift action_17
action_43 (46) = happyShift action_18
action_43 (10) = happyGoto action_50
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_6
action_44 (17) = happyShift action_7
action_44 (21) = happyShift action_10
action_44 (22) = happyShift action_11
action_44 (23) = happyShift action_12
action_44 (26) = happyShift action_14
action_44 (27) = happyShift action_15
action_44 (29) = happyShift action_22
action_44 (42) = happyShift action_17
action_44 (46) = happyShift action_18
action_44 (10) = happyGoto action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (16) = happyShift action_6
action_45 (17) = happyShift action_7
action_45 (21) = happyShift action_10
action_45 (22) = happyShift action_11
action_45 (23) = happyShift action_12
action_45 (26) = happyShift action_14
action_45 (27) = happyShift action_15
action_45 (29) = happyShift action_22
action_45 (42) = happyShift action_17
action_45 (46) = happyShift action_18
action_45 (10) = happyGoto action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (29) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (18) = happyShift action_8
action_47 (19) = happyShift action_9
action_47 (29) = happyShift action_30
action_47 (6) = happyGoto action_79
action_47 (8) = happyGoto action_80
action_47 (9) = happyGoto action_81
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (37) = happyFail []
action_48 (38) = happyFail []
action_48 (41) = happyShift action_39
action_48 (42) = happyShift action_40
action_48 (43) = happyShift action_41
action_48 (44) = happyShift action_42
action_48 (45) = happyShift action_43
action_48 (47) = happyFail []
action_48 (48) = happyFail []
action_48 _ = happyReduce_23

action_49 (37) = happyFail []
action_49 (38) = happyFail []
action_49 (41) = happyShift action_39
action_49 (42) = happyShift action_40
action_49 (43) = happyShift action_41
action_49 (44) = happyShift action_42
action_49 (45) = happyShift action_43
action_49 (47) = happyFail []
action_49 (48) = happyFail []
action_49 _ = happyReduce_22

action_50 _ = happyReduce_30

action_51 _ = happyReduce_29

action_52 _ = happyReduce_28

action_53 (43) = happyShift action_41
action_53 (44) = happyShift action_42
action_53 (45) = happyShift action_43
action_53 _ = happyReduce_27

action_54 (43) = happyShift action_41
action_54 (44) = happyShift action_42
action_54 (45) = happyShift action_43
action_54 _ = happyReduce_26

action_55 (35) = happyShift action_33
action_55 (36) = happyShift action_34
action_55 (37) = happyShift action_35
action_55 (38) = happyShift action_36
action_55 (39) = happyShift action_37
action_55 (41) = happyShift action_39
action_55 (42) = happyShift action_40
action_55 (43) = happyShift action_41
action_55 (44) = happyShift action_42
action_55 (45) = happyShift action_43
action_55 (47) = happyShift action_44
action_55 (48) = happyShift action_45
action_55 _ = happyReduce_25

action_56 (35) = happyShift action_33
action_56 (36) = happyShift action_34
action_56 (37) = happyShift action_35
action_56 (38) = happyShift action_36
action_56 (41) = happyShift action_39
action_56 (42) = happyShift action_40
action_56 (43) = happyShift action_41
action_56 (44) = happyShift action_42
action_56 (45) = happyShift action_43
action_56 (47) = happyShift action_44
action_56 (48) = happyShift action_45
action_56 _ = happyReduce_24

action_57 (37) = happyFail []
action_57 (38) = happyFail []
action_57 (41) = happyShift action_39
action_57 (42) = happyShift action_40
action_57 (43) = happyShift action_41
action_57 (44) = happyShift action_42
action_57 (45) = happyShift action_43
action_57 (47) = happyFail []
action_57 (48) = happyFail []
action_57 _ = happyReduce_21

action_58 (37) = happyFail []
action_58 (38) = happyFail []
action_58 (41) = happyShift action_39
action_58 (42) = happyShift action_40
action_58 (43) = happyShift action_41
action_58 (44) = happyShift action_42
action_58 (45) = happyShift action_43
action_58 (47) = happyFail []
action_58 (48) = happyFail []
action_58 _ = happyReduce_20

action_59 (35) = happyFail []
action_59 (36) = happyFail []
action_59 (37) = happyShift action_35
action_59 (38) = happyShift action_36
action_59 (41) = happyShift action_39
action_59 (42) = happyShift action_40
action_59 (43) = happyShift action_41
action_59 (44) = happyShift action_42
action_59 (45) = happyShift action_43
action_59 (47) = happyShift action_44
action_59 (48) = happyShift action_45
action_59 _ = happyReduce_19

action_60 (35) = happyFail []
action_60 (36) = happyFail []
action_60 (37) = happyShift action_35
action_60 (38) = happyShift action_36
action_60 (41) = happyShift action_39
action_60 (42) = happyShift action_40
action_60 (43) = happyShift action_41
action_60 (44) = happyShift action_42
action_60 (45) = happyShift action_43
action_60 (47) = happyShift action_44
action_60 (48) = happyShift action_45
action_60 _ = happyReduce_18

action_61 (30) = happyShift action_78
action_61 (35) = happyShift action_33
action_61 (36) = happyShift action_34
action_61 (37) = happyShift action_35
action_61 (38) = happyShift action_36
action_61 (39) = happyShift action_37
action_61 (40) = happyShift action_38
action_61 (41) = happyShift action_39
action_61 (42) = happyShift action_40
action_61 (43) = happyShift action_41
action_61 (44) = happyShift action_42
action_61 (45) = happyShift action_43
action_61 (47) = happyShift action_44
action_61 (48) = happyShift action_45
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (30) = happyShift action_77
action_62 (35) = happyShift action_33
action_62 (36) = happyShift action_34
action_62 (37) = happyShift action_35
action_62 (38) = happyShift action_36
action_62 (39) = happyShift action_37
action_62 (40) = happyShift action_38
action_62 (41) = happyShift action_39
action_62 (42) = happyShift action_40
action_62 (43) = happyShift action_41
action_62 (44) = happyShift action_42
action_62 (45) = happyShift action_43
action_62 (47) = happyShift action_44
action_62 (48) = happyShift action_45
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (16) = happyShift action_6
action_63 (17) = happyShift action_7
action_63 (21) = happyShift action_10
action_63 (22) = happyShift action_11
action_63 (23) = happyShift action_12
action_63 (26) = happyShift action_14
action_63 (27) = happyShift action_15
action_63 (29) = happyShift action_22
action_63 (42) = happyShift action_17
action_63 (46) = happyShift action_18
action_63 (10) = happyGoto action_76
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (35) = happyShift action_33
action_64 (36) = happyShift action_34
action_64 (37) = happyShift action_35
action_64 (38) = happyShift action_36
action_64 (39) = happyShift action_37
action_64 (40) = happyShift action_38
action_64 (41) = happyShift action_39
action_64 (42) = happyShift action_40
action_64 (43) = happyShift action_41
action_64 (44) = happyShift action_42
action_64 (45) = happyShift action_43
action_64 (47) = happyShift action_44
action_64 (48) = happyShift action_45
action_64 _ = happyReduce_48

action_65 (30) = happyShift action_74
action_65 (33) = happyShift action_75
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_39

action_67 (16) = happyShift action_6
action_67 (17) = happyShift action_7
action_67 (21) = happyShift action_10
action_67 (22) = happyShift action_11
action_67 (23) = happyShift action_12
action_67 (26) = happyShift action_14
action_67 (27) = happyShift action_15
action_67 (29) = happyShift action_22
action_67 (42) = happyShift action_17
action_67 (46) = happyShift action_18
action_67 (10) = happyGoto action_73
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_38

action_69 _ = happyReduce_9

action_70 (18) = happyShift action_8
action_70 (19) = happyShift action_9
action_70 (29) = happyShift action_30
action_70 (6) = happyGoto action_72
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_1

action_72 _ = happyReduce_10

action_73 (35) = happyShift action_33
action_73 (36) = happyShift action_34
action_73 (37) = happyShift action_35
action_73 (38) = happyShift action_36
action_73 (39) = happyShift action_37
action_73 (40) = happyShift action_38
action_73 (41) = happyShift action_39
action_73 (42) = happyShift action_40
action_73 (43) = happyShift action_41
action_73 (44) = happyShift action_42
action_73 (45) = happyShift action_43
action_73 (47) = happyShift action_44
action_73 (48) = happyShift action_45
action_73 _ = happyReduce_49

action_74 _ = happyReduce_37

action_75 (16) = happyShift action_6
action_75 (17) = happyShift action_7
action_75 (21) = happyShift action_10
action_75 (22) = happyShift action_11
action_75 (23) = happyShift action_12
action_75 (26) = happyShift action_14
action_75 (27) = happyShift action_15
action_75 (29) = happyShift action_22
action_75 (42) = happyShift action_17
action_75 (46) = happyShift action_18
action_75 (10) = happyGoto action_87
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (35) = happyShift action_33
action_76 (36) = happyShift action_34
action_76 (37) = happyShift action_35
action_76 (38) = happyShift action_36
action_76 (39) = happyShift action_37
action_76 (40) = happyShift action_38
action_76 (41) = happyShift action_39
action_76 (42) = happyShift action_40
action_76 (43) = happyShift action_41
action_76 (44) = happyShift action_42
action_76 (45) = happyShift action_43
action_76 (47) = happyShift action_44
action_76 (48) = happyShift action_45
action_76 _ = happyReduce_3

action_77 (16) = happyShift action_6
action_77 (17) = happyShift action_7
action_77 (21) = happyShift action_10
action_77 (22) = happyShift action_11
action_77 (23) = happyShift action_12
action_77 (26) = happyShift action_14
action_77 (27) = happyShift action_15
action_77 (29) = happyShift action_22
action_77 (42) = happyShift action_17
action_77 (46) = happyShift action_18
action_77 (10) = happyGoto action_86
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (31) = happyShift action_85
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (26) = happyShift action_84
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (30) = happyShift action_82
action_80 (33) = happyShift action_83
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_13

action_82 (26) = happyShift action_94
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (18) = happyShift action_8
action_83 (19) = happyShift action_9
action_83 (29) = happyShift action_30
action_83 (6) = happyGoto action_79
action_83 (9) = happyGoto action_93
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_14

action_85 (16) = happyShift action_6
action_85 (17) = happyShift action_7
action_85 (21) = happyShift action_10
action_85 (22) = happyShift action_11
action_85 (23) = happyShift action_12
action_85 (26) = happyShift action_14
action_85 (27) = happyShift action_15
action_85 (29) = happyShift action_22
action_85 (42) = happyShift action_17
action_85 (46) = happyShift action_18
action_85 (10) = happyGoto action_89
action_85 (11) = happyGoto action_90
action_85 (12) = happyGoto action_91
action_85 (13) = happyGoto action_92
action_85 _ = happyReduce_44

action_86 (24) = happyShift action_88
action_86 (35) = happyShift action_33
action_86 (36) = happyShift action_34
action_86 (37) = happyShift action_35
action_86 (38) = happyShift action_36
action_86 (39) = happyShift action_37
action_86 (40) = happyShift action_38
action_86 (41) = happyShift action_39
action_86 (42) = happyShift action_40
action_86 (43) = happyShift action_41
action_86 (44) = happyShift action_42
action_86 (45) = happyShift action_43
action_86 (47) = happyShift action_44
action_86 (48) = happyShift action_45
action_86 _ = happyReduce_15

action_87 (35) = happyShift action_33
action_87 (36) = happyShift action_34
action_87 (37) = happyShift action_35
action_87 (38) = happyShift action_36
action_87 (39) = happyShift action_37
action_87 (40) = happyShift action_38
action_87 (41) = happyShift action_39
action_87 (42) = happyShift action_40
action_87 (43) = happyShift action_41
action_87 (44) = happyShift action_42
action_87 (45) = happyShift action_43
action_87 (47) = happyShift action_44
action_87 (48) = happyShift action_45
action_87 _ = happyReduce_47

action_88 (16) = happyShift action_6
action_88 (17) = happyShift action_7
action_88 (21) = happyShift action_10
action_88 (22) = happyShift action_11
action_88 (23) = happyShift action_12
action_88 (26) = happyShift action_14
action_88 (27) = happyShift action_15
action_88 (29) = happyShift action_22
action_88 (42) = happyShift action_17
action_88 (46) = happyShift action_18
action_88 (10) = happyGoto action_100
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (35) = happyShift action_33
action_89 (36) = happyShift action_34
action_89 (37) = happyShift action_35
action_89 (38) = happyShift action_36
action_89 (39) = happyShift action_37
action_89 (40) = happyShift action_38
action_89 (41) = happyShift action_39
action_89 (42) = happyShift action_40
action_89 (43) = happyShift action_41
action_89 (44) = happyShift action_42
action_89 (45) = happyShift action_43
action_89 (47) = happyShift action_44
action_89 (48) = happyShift action_45
action_89 _ = happyReduce_46

action_90 (28) = happyShift action_98
action_90 (32) = happyShift action_99
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_42

action_92 (33) = happyShift action_96
action_92 (34) = happyShift action_97
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_12

action_94 (16) = happyShift action_6
action_94 (17) = happyShift action_7
action_94 (21) = happyShift action_10
action_94 (22) = happyShift action_11
action_94 (23) = happyShift action_12
action_94 (26) = happyShift action_14
action_94 (27) = happyShift action_15
action_94 (29) = happyShift action_22
action_94 (42) = happyShift action_17
action_94 (46) = happyShift action_18
action_94 (10) = happyGoto action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (35) = happyShift action_33
action_95 (36) = happyShift action_34
action_95 (37) = happyShift action_35
action_95 (38) = happyShift action_36
action_95 (39) = happyShift action_37
action_95 (40) = happyShift action_38
action_95 (41) = happyShift action_39
action_95 (42) = happyShift action_40
action_95 (43) = happyShift action_41
action_95 (44) = happyShift action_42
action_95 (45) = happyShift action_43
action_95 (47) = happyShift action_44
action_95 (48) = happyShift action_45
action_95 _ = happyReduce_4

action_96 (16) = happyShift action_6
action_96 (17) = happyShift action_7
action_96 (21) = happyShift action_10
action_96 (22) = happyShift action_11
action_96 (23) = happyShift action_12
action_96 (26) = happyShift action_14
action_96 (27) = happyShift action_15
action_96 (29) = happyShift action_22
action_96 (42) = happyShift action_17
action_96 (46) = happyShift action_18
action_96 (10) = happyGoto action_103
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (16) = happyShift action_6
action_97 (17) = happyShift action_7
action_97 (21) = happyShift action_10
action_97 (22) = happyShift action_11
action_97 (23) = happyShift action_12
action_97 (26) = happyShift action_14
action_97 (27) = happyShift action_15
action_97 (29) = happyShift action_22
action_97 (42) = happyShift action_17
action_97 (46) = happyShift action_18
action_97 (10) = happyGoto action_102
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (16) = happyShift action_6
action_98 (17) = happyShift action_7
action_98 (21) = happyShift action_10
action_98 (22) = happyShift action_11
action_98 (23) = happyShift action_12
action_98 (26) = happyShift action_14
action_98 (27) = happyShift action_15
action_98 (29) = happyShift action_22
action_98 (42) = happyShift action_17
action_98 (46) = happyShift action_18
action_98 (10) = happyGoto action_89
action_98 (12) = happyGoto action_101
action_98 (13) = happyGoto action_92
action_98 _ = happyReduce_44

action_99 _ = happyReduce_17

action_100 (35) = happyShift action_33
action_100 (36) = happyShift action_34
action_100 (37) = happyShift action_35
action_100 (38) = happyShift action_36
action_100 (39) = happyShift action_37
action_100 (40) = happyShift action_38
action_100 (41) = happyShift action_39
action_100 (42) = happyShift action_40
action_100 (43) = happyShift action_41
action_100 (44) = happyShift action_42
action_100 (45) = happyShift action_43
action_100 (47) = happyShift action_44
action_100 (48) = happyShift action_45
action_100 _ = happyReduce_16

action_101 _ = happyReduce_41

action_102 (35) = happyShift action_33
action_102 (36) = happyShift action_34
action_102 (37) = happyShift action_35
action_102 (38) = happyShift action_36
action_102 (39) = happyShift action_37
action_102 (40) = happyShift action_38
action_102 (41) = happyShift action_39
action_102 (42) = happyShift action_40
action_102 (43) = happyShift action_41
action_102 (44) = happyShift action_42
action_102 (45) = happyShift action_43
action_102 (47) = happyShift action_44
action_102 (48) = happyShift action_45
action_102 _ = happyReduce_43

action_103 (35) = happyShift action_33
action_103 (36) = happyShift action_34
action_103 (37) = happyShift action_35
action_103 (38) = happyShift action_36
action_103 (39) = happyShift action_37
action_103 (40) = happyShift action_38
action_103 (41) = happyShift action_39
action_103 (42) = happyShift action_40
action_103 (43) = happyShift action_41
action_103 (44) = happyShift action_42
action_103 (45) = happyShift action_43
action_103 (47) = happyShift action_44
action_103 (48) = happyShift action_45
action_103 _ = happyReduce_45

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

happyReduce_3 = happyReduce 4 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent happy_var_3)) `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Cnst happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	(HappyTerminal (TIdent happy_var_6)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Fct happy_var_1 (reverse happy_var_4) happy_var_6 happy_var_7
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (WildExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_0  5 happyReduction_6
happyReduction_6  =  HappyAbsSyn5
		 (EmptyLine
	)

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn6
		 (IntT
	)

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn6
		 (BoolT
	)

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TupleT (reverse happy_var_2)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  9 happyReduction_14
happyReduction_14 (HappyTerminal (TIdent happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (Param happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 5 10 happyReduction_15
happyReduction_15 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 10 happyReduction_16
happyReduction_16 ((HappyAbsSyn10  happy_var_7) `HappyStk`
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

happyReduce_17 = happyReduce 7 10 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Handle happy_var_3 (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (BelowEqual happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (AboveEqual happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Below happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Above happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (And happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Div happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Rest happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  10 happyReduction_31
happyReduction_31 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Not happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  10 happyReduction_32
happyReduction_32 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Neg happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn10
		 (Integer happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  10 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn10
		 (Boolean True
	)

happyReduce_35 = happySpecReduce_1  10 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn10
		 (Boolean False
	)

happyReduce_36 = happySpecReduce_1  10 happyReduction_36
happyReduction_36 (HappyTerminal (TIdent happy_var_1))
	 =  HappyAbsSyn10
		 (Symbol happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 10 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (FSymbol happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_3  10 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Parent happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  10 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Tuple (reverse happy_var_2)
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  10 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn10
		 (Trivial
	)

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

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Case (reverse happy_var_1) happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_0  12 happyReduction_44
happyReduction_44  =  HappyAbsSyn12
		 (Empty
	)

happyReduce_45 = happySpecReduce_3  13 happyReduction_45
happyReduction_45 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  13 happyReduction_46
happyReduction_46 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  14 happyReduction_47
happyReduction_47 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_3 : happy_var_1
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  14 happyReduction_48
happyReduction_48 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  15 happyReduction_49
happyReduction_49 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  15 happyReduction_50
happyReduction_50 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_50 _  = notHappyAtAll 

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
    | Trivial
  deriving Show

data Handler
    = Case [Expr] Expr
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
