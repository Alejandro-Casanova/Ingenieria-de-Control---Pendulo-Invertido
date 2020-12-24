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
    ;% Auto data (nosh5pssab)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nosh5pssab.Kservo2
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% nosh5pssab.CompareToConstant_const
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nosh5pssab.CompareToConstant1_const
	  section.data(2).logicalSrcIdx = 2;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 26;
      section.data(26)  = dumData; %prealloc
      
	  ;% nosh5pssab.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nosh5pssab.Constant2_Value
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nosh5pssab.A_Value
	  section.data(3).logicalSrcIdx = 5;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nosh5pssab.C_Value
	  section.data(4).logicalSrcIdx = 6;
	  section.data(4).dtTransOffset = 18;
	
	  ;% nosh5pssab.KalmanGainL_Value
	  section.data(5).logicalSrcIdx = 7;
	  section.data(5).dtTransOffset = 26;
	
	  ;% nosh5pssab.Gain_Gain
	  section.data(6).logicalSrcIdx = 8;
	  section.data(6).dtTransOffset = 34;
	
	  ;% nosh5pssab.Constant3_Value
	  section.data(7).logicalSrcIdx = 9;
	  section.data(7).dtTransOffset = 35;
	
	  ;% nosh5pssab.DeadZone_Start
	  section.data(8).logicalSrcIdx = 10;
	  section.data(8).dtTransOffset = 36;
	
	  ;% nosh5pssab.DeadZone_End
	  section.data(9).logicalSrcIdx = 11;
	  section.data(9).dtTransOffset = 37;
	
	  ;% nosh5pssab.Gain3_Gain
	  section.data(10).logicalSrcIdx = 12;
	  section.data(10).dtTransOffset = 38;
	
	  ;% nosh5pssab.Constant_Value
	  section.data(11).logicalSrcIdx = 13;
	  section.data(11).dtTransOffset = 39;
	
	  ;% nosh5pssab.Constant1_Value
	  section.data(12).logicalSrcIdx = 14;
	  section.data(12).dtTransOffset = 40;
	
	  ;% nosh5pssab.Merge_InitialOutput
	  section.data(13).logicalSrcIdx = 15;
	  section.data(13).dtTransOffset = 41;
	
	  ;% nosh5pssab.X0_Value
	  section.data(14).logicalSrcIdx = 16;
	  section.data(14).dtTransOffset = 42;
	
	  ;% nosh5pssab.DiscreteTimeIntegrator_gainval
	  section.data(15).logicalSrcIdx = 17;
	  section.data(15).dtTransOffset = 46;
	
	  ;% nosh5pssab.DiscreteTimeIntegrator_IC
	  section.data(16).logicalSrcIdx = 18;
	  section.data(16).dtTransOffset = 47;
	
	  ;% nosh5pssab.B_Value
	  section.data(17).logicalSrcIdx = 19;
	  section.data(17).dtTransOffset = 48;
	
	  ;% nosh5pssab.D_Value
	  section.data(18).logicalSrcIdx = 20;
	  section.data(18).dtTransOffset = 52;
	
	  ;% nosh5pssab.Saturation_UpperSat
	  section.data(19).logicalSrcIdx = 21;
	  section.data(19).dtTransOffset = 54;
	
	  ;% nosh5pssab.Saturation_LowerSat
	  section.data(20).logicalSrcIdx = 22;
	  section.data(20).dtTransOffset = 55;
	
	  ;% nosh5pssab.Gain2_Gain
	  section.data(21).logicalSrcIdx = 23;
	  section.data(21).dtTransOffset = 56;
	
	  ;% nosh5pssab.Gain1_Gain
	  section.data(22).logicalSrcIdx = 24;
	  section.data(22).dtTransOffset = 57;
	
	  ;% nosh5pssab.Step_Time
	  section.data(23).logicalSrcIdx = 25;
	  section.data(23).dtTransOffset = 58;
	
	  ;% nosh5pssab.Step_Y0
	  section.data(24).logicalSrcIdx = 26;
	  section.data(24).dtTransOffset = 59;
	
	  ;% nosh5pssab.Step_YFinal
	  section.data(25).logicalSrcIdx = 27;
	  section.data(25).dtTransOffset = 60;
	
	  ;% nosh5pssab.Gain_Gain_l4b4rj0pjh
	  section.data(26).logicalSrcIdx = 28;
	  section.data(26).dtTransOffset = 61;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nosh5pssab.Delay_InitialCondition
	  section.data(1).logicalSrcIdx = 29;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% nosh5pssab.Constant1_Value_flqgqjzvjr
	  section.data(1).logicalSrcIdx = 30;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nosh5pssab.Constant_Value_dtwubeuw2e
	  section.data(2).logicalSrcIdx = 31;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nosh5pssab.Memory_InitialCondition
	  section.data(3).logicalSrcIdx = 32;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nosh5pssab.Enable_Value
	  section.data(4).logicalSrcIdx = 33;
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
    ;% Auto data (nj3xjif5o5r)
    ;%
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% nj3xjif5o5r.m35ptq0vsi
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nj3xjif5o5r.iskmrqdnx5
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nj3xjif5o5r.fm0ri22yyd
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nj3xjif5o5r.mdqbghb1c0
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% nj3xjif5o5r.mn0l0dn1gz
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% nj3xjif5o5r.irvmxsvbf0
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nj3xjif5o5r.keuojwskjl
	  section.data(2).logicalSrcIdx = 6;
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
    nTotSects     = 10;
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
    ;% Auto data (l01m0lxaz1s)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.an4hhutxbk
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.nmp3hbisxj
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.n0pzo4hdxf
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% l01m0lxaz1s.is3e2ghhag
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 1;
	
	  ;% l01m0lxaz1s.cn3kog4z50
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.jcvk0avd5c.LoggedData
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% l01m0lxaz1s.mi5uq4hcvu.LoggedData
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% l01m0lxaz1s.eavl1htium.LoggedData
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 2;
	
	  ;% l01m0lxaz1s.ombk0l1em3.LoggedData
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.ml4iwcv4c4
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.fq0p5231ir
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.crkcakiiaz
	  section.data(1).logicalSrcIdx = 11;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.k0hu0ywopq
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
	  ;% l01m0lxaz1s.nnmrkq53u4
	  section.data(2).logicalSrcIdx = 13;
	  section.data(2).dtTransOffset = 1;
	
	  ;% l01m0lxaz1s.accyb5ton2
	  section.data(3).logicalSrcIdx = 14;
	  section.data(3).dtTransOffset = 2;
	
	  ;% l01m0lxaz1s.n2eezjdaej
	  section.data(4).logicalSrcIdx = 15;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.bvnu20lspo.pmuih1pnmy
	  section.data(1).logicalSrcIdx = 16;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% l01m0lxaz1s.omhgj1zqwla.pmuih1pnmy
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
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


  targMap.checksum0 = 3599664613;
  targMap.checksum1 = 3239003570;
  targMap.checksum2 = 2955953094;
  targMap.checksum3 = 701347178;

