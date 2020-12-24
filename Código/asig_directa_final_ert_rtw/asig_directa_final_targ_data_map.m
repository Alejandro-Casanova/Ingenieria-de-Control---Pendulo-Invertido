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
    ;% Auto data (bboyjjuvyi)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% bboyjjuvyi.Klqr
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% bboyjjuvyi.CompareToConstant_const
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bboyjjuvyi.CompareToConstant1_const
	  section.data(2).logicalSrcIdx = 2;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 20;
      section.data(20)  = dumData; %prealloc
      
	  ;% bboyjjuvyi.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bboyjjuvyi.Constant2_Value
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bboyjjuvyi.A_Value
	  section.data(3).logicalSrcIdx = 5;
	  section.data(3).dtTransOffset = 2;
	
	  ;% bboyjjuvyi.C_Value
	  section.data(4).logicalSrcIdx = 6;
	  section.data(4).dtTransOffset = 18;
	
	  ;% bboyjjuvyi.KalmanGainL_Value
	  section.data(5).logicalSrcIdx = 7;
	  section.data(5).dtTransOffset = 26;
	
	  ;% bboyjjuvyi.Step_Time
	  section.data(6).logicalSrcIdx = 8;
	  section.data(6).dtTransOffset = 34;
	
	  ;% bboyjjuvyi.Step_Y0
	  section.data(7).logicalSrcIdx = 9;
	  section.data(7).dtTransOffset = 35;
	
	  ;% bboyjjuvyi.Step_YFinal
	  section.data(8).logicalSrcIdx = 10;
	  section.data(8).dtTransOffset = 36;
	
	  ;% bboyjjuvyi.X0_Value
	  section.data(9).logicalSrcIdx = 11;
	  section.data(9).dtTransOffset = 37;
	
	  ;% bboyjjuvyi.D_Value
	  section.data(10).logicalSrcIdx = 12;
	  section.data(10).dtTransOffset = 41;
	
	  ;% bboyjjuvyi.Constant3_Value
	  section.data(11).logicalSrcIdx = 13;
	  section.data(11).dtTransOffset = 43;
	
	  ;% bboyjjuvyi.DeadZone_Start
	  section.data(12).logicalSrcIdx = 14;
	  section.data(12).dtTransOffset = 44;
	
	  ;% bboyjjuvyi.DeadZone_End
	  section.data(13).logicalSrcIdx = 15;
	  section.data(13).dtTransOffset = 45;
	
	  ;% bboyjjuvyi.Gain3_Gain
	  section.data(14).logicalSrcIdx = 16;
	  section.data(14).dtTransOffset = 46;
	
	  ;% bboyjjuvyi.Gain_Gain
	  section.data(15).logicalSrcIdx = 17;
	  section.data(15).dtTransOffset = 47;
	
	  ;% bboyjjuvyi.B_Value
	  section.data(16).logicalSrcIdx = 18;
	  section.data(16).dtTransOffset = 48;
	
	  ;% bboyjjuvyi.Saturation_UpperSat
	  section.data(17).logicalSrcIdx = 19;
	  section.data(17).dtTransOffset = 52;
	
	  ;% bboyjjuvyi.Saturation_LowerSat
	  section.data(18).logicalSrcIdx = 20;
	  section.data(18).dtTransOffset = 53;
	
	  ;% bboyjjuvyi.Gain2_Gain
	  section.data(19).logicalSrcIdx = 21;
	  section.data(19).dtTransOffset = 54;
	
	  ;% bboyjjuvyi.Gain1_Gain
	  section.data(20).logicalSrcIdx = 22;
	  section.data(20).dtTransOffset = 55;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% bboyjjuvyi.Delay_InitialCondition
	  section.data(1).logicalSrcIdx = 23;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% bboyjjuvyi.Constant1_Value
	  section.data(1).logicalSrcIdx = 24;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bboyjjuvyi.Enable_Value
	  section.data(2).logicalSrcIdx = 25;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bboyjjuvyi.Memory_InitialCondition
	  section.data(3).logicalSrcIdx = 26;
	  section.data(3).dtTransOffset = 2;
	
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
    nTotSects     = 4;
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
    ;% Auto data (a4lymr2a0lq)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% a4lymr2a0lq.npzubrpcq3
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% a4lymr2a0lq.fnz5ps4xc0
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% a4lymr2a0lq.pmy4sv5ssg
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% a4lymr2a0lq.efu4j5luhu
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% a4lymr2a0lq.dshglq5zlp
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
	  ;% a4lymr2a0lq.g0biaicscc
	  section.data(2).logicalSrcIdx = 5;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% a4lymr2a0lq.mn5hrhxzi4
	  section.data(1).logicalSrcIdx = 6;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
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
    nTotSects     = 8;
    sectIdxOffset = 4;
    
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
    ;% Auto data (pmhlxy50klo)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.bp33p03tue
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.cb4vkklxmh
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.b1aspo0cek
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% pmhlxy50klo.axyynjyjtm
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.kcdvvm5big.LoggedData
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
	  ;% pmhlxy50klo.dw5orqtb1c.LoggedData
	  section.data(2).logicalSrcIdx = 5;
	  section.data(2).dtTransOffset = 1;
	
	  ;% pmhlxy50klo.ci311yw3gu.LoggedData
	  section.data(3).logicalSrcIdx = 6;
	  section.data(3).dtTransOffset = 2;
	
	  ;% pmhlxy50klo.c2njt5mbbm.LoggedData
	  section.data(4).logicalSrcIdx = 7;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.ka0jsceaib
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.jowvne3bab
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.e2nxtafieb
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% pmhlxy50klo.fqa4rklthu
	  section.data(1).logicalSrcIdx = 11;
	  section.data(1).dtTransOffset = 0;
	
	  ;% pmhlxy50klo.in12121zyk
	  section.data(2).logicalSrcIdx = 12;
	  section.data(2).dtTransOffset = 1;
	
	  ;% pmhlxy50klo.da5fhvisxv
	  section.data(3).logicalSrcIdx = 13;
	  section.data(3).dtTransOffset = 2;
	
	  ;% pmhlxy50klo.oq5u51j0eh
	  section.data(4).logicalSrcIdx = 14;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
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


  targMap.checksum0 = 436701401;
  targMap.checksum1 = 1671208115;
  targMap.checksum2 = 1738399627;
  targMap.checksum3 = 155550839;

