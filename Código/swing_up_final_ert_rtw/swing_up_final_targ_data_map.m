  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 5;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (o0mri1w0ct)
    ;%
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% o0mri1w0ct.Kservo2
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% o0mri1w0ct.Xmax
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 5;
	
	  ;% o0mri1w0ct.Xmin
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 6;
	
	  ;% o0mri1w0ct.alfaBest
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 7;
	
	  ;% o0mri1w0ct.DiscreteDerivative_ICPrevScaled
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 8;
	
	  ;% o0mri1w0ct.MinMaxRunningResettable_vinit
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 9;
	
	  ;% o0mri1w0ct.MinMaxRunningResettable2_vinit
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 10;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% o0mri1w0ct.CompareToConstant_const
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
	  ;% o0mri1w0ct.CompareToConstant1_const
	  section.data(2).logicalSrcIdx = 8;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 41;
      section.data(41)  = dumData; %prealloc
      
	  ;% o0mri1w0ct.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% o0mri1w0ct.Constant2_Value
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
	  ;% o0mri1w0ct.A_Value
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 2;
	
	  ;% o0mri1w0ct.C_Value
	  section.data(4).logicalSrcIdx = 12;
	  section.data(4).dtTransOffset = 18;
	
	  ;% o0mri1w0ct.KalmanGainL_Value
	  section.data(5).logicalSrcIdx = 13;
	  section.data(5).dtTransOffset = 26;
	
	  ;% o0mri1w0ct.Gain_Gain
	  section.data(6).logicalSrcIdx = 14;
	  section.data(6).dtTransOffset = 34;
	
	  ;% o0mri1w0ct.Constant3_Value
	  section.data(7).logicalSrcIdx = 15;
	  section.data(7).dtTransOffset = 35;
	
	  ;% o0mri1w0ct.DeadZone_Start
	  section.data(8).logicalSrcIdx = 16;
	  section.data(8).dtTransOffset = 36;
	
	  ;% o0mri1w0ct.DeadZone_End
	  section.data(9).logicalSrcIdx = 17;
	  section.data(9).dtTransOffset = 37;
	
	  ;% o0mri1w0ct.Gain3_Gain
	  section.data(10).logicalSrcIdx = 18;
	  section.data(10).dtTransOffset = 38;
	
	  ;% o0mri1w0ct.Constant_Value
	  section.data(11).logicalSrcIdx = 19;
	  section.data(11).dtTransOffset = 39;
	
	  ;% o0mri1w0ct.Constant1_Value
	  section.data(12).logicalSrcIdx = 20;
	  section.data(12).dtTransOffset = 40;
	
	  ;% o0mri1w0ct.Merge_InitialOutput
	  section.data(13).logicalSrcIdx = 21;
	  section.data(13).dtTransOffset = 41;
	
	  ;% o0mri1w0ct.X0_Value
	  section.data(14).logicalSrcIdx = 22;
	  section.data(14).dtTransOffset = 42;
	
	  ;% o0mri1w0ct.DiscreteTimeIntegrator_gainval
	  section.data(15).logicalSrcIdx = 23;
	  section.data(15).dtTransOffset = 46;
	
	  ;% o0mri1w0ct.DiscreteTimeIntegrator_IC
	  section.data(16).logicalSrcIdx = 24;
	  section.data(16).dtTransOffset = 47;
	
	  ;% o0mri1w0ct.B_Value
	  section.data(17).logicalSrcIdx = 25;
	  section.data(17).dtTransOffset = 48;
	
	  ;% o0mri1w0ct.D_Value
	  section.data(18).logicalSrcIdx = 26;
	  section.data(18).dtTransOffset = 52;
	
	  ;% o0mri1w0ct.Constant7_Value
	  section.data(19).logicalSrcIdx = 27;
	  section.data(19).dtTransOffset = 54;
	
	  ;% o0mri1w0ct.Constant5_Value
	  section.data(20).logicalSrcIdx = 28;
	  section.data(20).dtTransOffset = 55;
	
	  ;% o0mri1w0ct.Constant6_Value
	  section.data(21).logicalSrcIdx = 29;
	  section.data(21).dtTransOffset = 56;
	
	  ;% o0mri1w0ct.Constant_Value_bejh11f5do
	  section.data(22).logicalSrcIdx = 30;
	  section.data(22).dtTransOffset = 57;
	
	  ;% o0mri1w0ct.Memory_InitialCondition
	  section.data(23).logicalSrcIdx = 31;
	  section.data(23).dtTransOffset = 58;
	
	  ;% o0mri1w0ct.Gain1_Gain
	  section.data(24).logicalSrcIdx = 32;
	  section.data(24).dtTransOffset = 59;
	
	  ;% o0mri1w0ct.Constant3_Value_flqgqjzvjr
	  section.data(25).logicalSrcIdx = 33;
	  section.data(25).dtTransOffset = 60;
	
	  ;% o0mri1w0ct.Merge1_InitialOutput
	  section.data(26).logicalSrcIdx = 34;
	  section.data(26).dtTransOffset = 61;
	
	  ;% o0mri1w0ct.Constant1_Value_j0j5kt5zqt
	  section.data(27).logicalSrcIdx = 35;
	  section.data(27).dtTransOffset = 62;
	
	  ;% o0mri1w0ct.Constant4_Value
	  section.data(28).logicalSrcIdx = 36;
	  section.data(28).dtTransOffset = 63;
	
	  ;% o0mri1w0ct.TSamp_WtEt
	  section.data(29).logicalSrcIdx = 37;
	  section.data(29).dtTransOffset = 64;
	
	  ;% o0mri1w0ct.Constant12_Value
	  section.data(30).logicalSrcIdx = 38;
	  section.data(30).dtTransOffset = 65;
	
	  ;% o0mri1w0ct.Constant11_Value
	  section.data(31).logicalSrcIdx = 39;
	  section.data(31).dtTransOffset = 66;
	
	  ;% o0mri1w0ct.Merge2_InitialOutput
	  section.data(32).logicalSrcIdx = 40;
	  section.data(32).dtTransOffset = 67;
	
	  ;% o0mri1w0ct.Switch_Threshold
	  section.data(33).logicalSrcIdx = 41;
	  section.data(33).dtTransOffset = 68;
	
	  ;% o0mri1w0ct.Step_Time
	  section.data(34).logicalSrcIdx = 42;
	  section.data(34).dtTransOffset = 69;
	
	  ;% o0mri1w0ct.Step_Y0
	  section.data(35).logicalSrcIdx = 43;
	  section.data(35).dtTransOffset = 70;
	
	  ;% o0mri1w0ct.Step_YFinal
	  section.data(36).logicalSrcIdx = 44;
	  section.data(36).dtTransOffset = 71;
	
	  ;% o0mri1w0ct.Gain_Gain_aco1qmazah
	  section.data(37).logicalSrcIdx = 45;
	  section.data(37).dtTransOffset = 72;
	
	  ;% o0mri1w0ct.Saturation_UpperSat
	  section.data(38).logicalSrcIdx = 46;
	  section.data(38).dtTransOffset = 73;
	
	  ;% o0mri1w0ct.Saturation_LowerSat
	  section.data(39).logicalSrcIdx = 47;
	  section.data(39).dtTransOffset = 74;
	
	  ;% o0mri1w0ct.Gain2_Gain
	  section.data(40).logicalSrcIdx = 48;
	  section.data(40).dtTransOffset = 75;
	
	  ;% o0mri1w0ct.Gain1_Gain_p2l1tcpb0c
	  section.data(41).logicalSrcIdx = 49;
	  section.data(41).dtTransOffset = 76;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% o0mri1w0ct.Delay_InitialCondition
	  section.data(1).logicalSrcIdx = 50;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% o0mri1w0ct.Constant1_Value_fs3jntlocd
	  section.data(1).logicalSrcIdx = 51;
	  section.data(1).dtTransOffset = 0;
	
	  ;% o0mri1w0ct.Constant_Value_ammrq4bbzx
	  section.data(2).logicalSrcIdx = 52;
	  section.data(2).dtTransOffset = 1;
	
	  ;% o0mri1w0ct.Memory_InitialCondit_lzg2z5321d
	  section.data(3).logicalSrcIdx = 53;
	  section.data(3).dtTransOffset = 2;
	
	  ;% o0mri1w0ct.Enable_Value
	  section.data(4).logicalSrcIdx = 54;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (ep4utwive5u)
    ;%
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% ep4utwive5u.d2sa5dfg03
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ep4utwive5u.epshs1pc3j
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ep4utwive5u.k45uymyufm
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ep4utwive5u.lrsthsq3gm
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ep4utwive5u.n5sua5d0ud
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ep4utwive5u.cwfcbs51no
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ep4utwive5u.h3dy1fzqvz
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ep4utwive5u.eo0ua50j5b
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ep4utwive5u.jyqjdzlgcg
	  section.data(2).logicalSrcIdx = 8;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 20;
    sectIdxOffset = 2;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (jolisc3c5y1)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.jq44jkh1h3
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.pxgmbyjicl
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.lmevf00bb0
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% jolisc3c5y1.negh1cnrx2
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 1;
	
	  ;% jolisc3c5y1.e4o3fmg0k4
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 5;
	
	  ;% jolisc3c5y1.onm4a24wwt
	  section.data(4).logicalSrcIdx = 5;
	  section.data(4).dtTransOffset = 6;
	
	  ;% jolisc3c5y1.ku1tj4ty2d
	  section.data(5).logicalSrcIdx = 6;
	  section.data(5).dtTransOffset = 7;
	
	  ;% jolisc3c5y1.l44utht30q
	  section.data(6).logicalSrcIdx = 7;
	  section.data(6).dtTransOffset = 8;
	
	  ;% jolisc3c5y1.dyghpiajsi
	  section.data(7).logicalSrcIdx = 8;
	  section.data(7).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.dfncx2e4ay.LoggedData
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% jolisc3c5y1.oeb3wan1mp.LoggedData
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
	  ;% jolisc3c5y1.dtqalqxm2o.LoggedData
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 2;
	
	  ;% jolisc3c5y1.kfc0114cvv.LoggedData
	  section.data(4).logicalSrcIdx = 12;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.mp5brg21bc
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.osez2ukl1l
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
	  ;% jolisc3c5y1.cvt3x1h4j3
	  section.data(2).logicalSrcIdx = 15;
	  section.data(2).dtTransOffset = 1;
	
	  ;% jolisc3c5y1.jo5tnwovru
	  section.data(3).logicalSrcIdx = 16;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.pvbwtstn3o
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.d42sb3erxb
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
	  ;% jolisc3c5y1.g5rxixqjak
	  section.data(2).logicalSrcIdx = 19;
	  section.data(2).dtTransOffset = 1;
	
	  ;% jolisc3c5y1.itz1er0hu1
	  section.data(3).logicalSrcIdx = 20;
	  section.data(3).dtTransOffset = 2;
	
	  ;% jolisc3c5y1.dx0clzo0eq
	  section.data(4).logicalSrcIdx = 21;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.pdkjsq2ejk.arumjqby53
	  section.data(1).logicalSrcIdx = 22;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.pqvnjzjcf2.arumjqby53
	  section.data(1).logicalSrcIdx = 23;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.eexr4k1on5.arumjqby53
	  section.data(1).logicalSrcIdx = 24;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.c1jr5u4tjb.arumjqby53
	  section.data(1).logicalSrcIdx = 25;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.haxlgsblsc.arumjqby53
	  section.data(1).logicalSrcIdx = 26;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.fi4psq3gm3.arumjqby53
	  section.data(1).logicalSrcIdx = 27;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.dii0zml1ga.arumjqby53
	  section.data(1).logicalSrcIdx = 28;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.hhtihucqoe.arumjqby53
	  section.data(1).logicalSrcIdx = 29;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.blwsyejnqy.arumjqby53
	  section.data(1).logicalSrcIdx = 30;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.n1yoc50cwf.arumjqby53
	  section.data(1).logicalSrcIdx = 31;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.h54k1wrzsg.arumjqby53
	  section.data(1).logicalSrcIdx = 32;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% jolisc3c5y1.o422culfqc3.arumjqby53
	  section.data(1).logicalSrcIdx = 33;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(20) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3695414320;
  targMap.checksum1 = 633872819;
  targMap.checksum2 = 1258827415;
  targMap.checksum3 = 3184501949;

