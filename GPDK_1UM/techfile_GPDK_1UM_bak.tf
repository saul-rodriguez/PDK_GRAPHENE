; Technology File GPDK_1UM
;
;********************************
; CONTROLS
;********************************
  ;  ) ;include

  ;comment(
    
  ;) ;comment


controls(
  techParams(
    ;( parameter           value )
    ;( ---------           ----- )
    
  ) ;techParams

  distanceMeasure(
    
  ) ;distanceMeasure

  viewTypeUnits(
    ;( viewType             userUnit        dbuPerUU            )
    ;( --------             --------        --------            )
    ( maskLayout     	"micron"       	2000            )
  	( schematic      	"inch"         	160             )
  	( schematicSymbol	"inch"         	160             )
  	( netlist        	"inch"         	160             )
  	( hierDesign     	"_def_"        	2000            )
    
  ) ;viewTypeUnits

  mfgGridResolution(
    ( 0.005000 )
  ) ;mfgGridResolution

  techVersion(
    
  ) ;techVersion

  refTechLibs(
    ; techLibName
    ; -----------
    
  ) ;refTechLibs

  processFamily(
    
  ) ;processFamily

) ;controls

layerDefinitions(
  techLayers(
    ;( LayerName                   Layer#      Abbreviation  )
    ;( ---------                   ------      ------------  )
    ( M_BACK                      1           M_BACK        )
    ( M_SD                        2           M_SD          )
    ( GRAPH                       3           GRAPH         )
    ( TOX_N                       4           TOX_N         )
    ( M_TOP                       5           M_TOP         )
    ( M_CONN                      6           M_CONN        )    
    ( CAV                         7           CAV           )
    ( AUX1                       20           AUX1          )
    ( AUX2                       21           AUX2          )
    ( AUX3                       22           AUX3          )
    ( AUX4                       23           AUX4          )
    ( AUX5                       24           AUX5          )
    
    
  ) ;techLayers

  techDerivedLayers(
    ;( DerivedLayerName  #         composition              Range Value/Contact Count   Shape on Nets  Exclusivity )
    ;( ----------------  ------    ------------             ------------------------    -------------  ----------- )
    
  ) ;techDerivedLayers

  techPurposes(
    ;( PurposeName    Purpose#    Abbreviation    'parent  Parent        'voltageRange  (  Min   Max  )    'sigType  sigType     'description  Description)
    ;( -----------    --------    ------------    'parent  ------        'voltageRange  (  ---   ---  )    'sigType  -------     'description  -----------)
    
  ) ;techPurposes

  techLayerPurposePriorities(
    ;layers are ordered from lowest to highest priority
    ;( LayerName                  Purpose     )
    ;( ---------                  -------     )
    ( M_BACK                    drawing     )
    ( M_SD                      drawing     )
    ( M_SD                       pin         )
    ( GRAPH                     drawing     )
    ( TOX_N                     drawing     )
    ( M_TOP                     drawing     )
    ( M_TOP                      pin         )
    ( M_CONN                    drawing     )
    ( CAV                       drawing     )
    ( AUX1                      drawing     )
    ( AUX2                      drawing     )
    ( AUX3                      drawing     )
    ( AUX4                      drawing     )
    ( AUX5                      drawing     )
    
  ) ;techLayerPurposePriorities

  techDisplays(
    ;( LayerName    Purpose      Packet           Vis  Sel  Con2ChgLy  DrgEnbl  Valid  )
    ;( ---------    -------      ------           ---  ---  ---------  -------  -----  )
     
    ( M_BACK       drawing      M_BACKdrawing    t    t    t          t        t      )
    ( M_SD         drawing      M_SDdrawing      t    t    t          t        t      )
    ( M_SD         pin      	M_SDpin          t    t    t          t        t      )
    ( GRAPH        drawing      GRAPHdrawing     t    t    t          t        t      )
    ( TOX_N        drawing      TOX_Ndrawing     t    t    t          t        t      )
    ( M_TOP        drawing      M_TOPdrawing     t    t    t          t        t      )
	( M_TOP        pin          M_TOPpin         t    t    t          t        t      )
    ( M_CONN       drawing      M_CONNdrawing    t    t    t          t        t      )
    ( CAV          drawing      CAVdrawing       t    t    t          t        t      )
    ( AUX1         drawing      AUX1drawing      t    t    t          t        t      )
    ( AUX2         drawing      AUX2drawing      t    t    t          t        t      )
    ( AUX3         drawing      AUX3drawing      t    t    t          t        t      )
    ( AUX4         drawing      AUX4drawing      t    t    t          t        t      )
    ( AUX5         drawing      AUX5drawing      t    t    t          t        t      )
    
  ) ;techDisplays

  techLayerProperties(
    ;( PropName               Layer1         [ Layer2 ]     PropValue )
    ;( --------               ------         ----------     --------- )
    
  ) ;techLayerProperties

) ;layerDefinitions

layerRules(
  equivalentLayers(
    ;( list of layers )
    ;( -------------- )
    
  ) ;equivalentLayers

  incompatibleLayers(
    ;( list of layers )
    ;( -------------- )
    
  ) ;incompatibleLayers

  functions(
    ;( layer                       function           [maskNumber])
    ;( -----                       --------           ------------)
    
  ) ;functions

  cutClasses(
    ;[t_constraint_group_name]
    ;( layer
    ;  ( className ['numCuts numCuts] ['minWidth] ['minLength] (width length) )
    ;)
    
  ) ;cutClasses

  mfgResolutions(
    ;( layer                       mfgResolution )
    ;( -----                       ------------- )
    
  ) ;mfgResolutions

  routingDirections(
    ;( layer               direction )
    ;( -----               --------- )
    
  ) ;routingDirections

  currentDensity(
    ;( Density                     Layer       Value         )
    ;( -------                     -----       -----         )
    
  ) ;currentDensity

  currentDensityTables(
    ;( rule                	layer1
    ;  (( index1Definitions	[index2Definitions]) [defaultValue] )
    ;  (table))
    ;( ----------------------------------------------------------------------)
    
  ) ;currentDensityTables

  stampLabelLayers(
    ;( (textLayer  Purpose   ) layers                                   )
    ;( (---------  -------   ) ---------------------------------------- )
    
  ) ;stampLabelLayers

  labelLayers(
    ;( textLayer  layers                                   )
    ;( ---------  ---------------------------------------- )
    
  ) ;labelLayers

) ;layerRules

viaDefs(
  standardViaDefs(
    ;( viaDefName	layer1	     layer2	     (cutLayer    cutWidth  cutHeight [resistancePerCut])
    ;  (cutRows	cutCol	 (cutSpace))
    ;  (layer1Enc) (layer2Enc)	(layer1Offset)	(layer2Offset)	(origOffset)
    ;  [implant1	 (implant1Enc)	[implant2	(implant2Enc) [well/substrate]]])
    
  ) ;standardViaDefs

  customViaDefs(
    ;( viaDefName      libName    cellName   viewName   bottomLayer  topLayer     cutResistance )
    
  ) ;customViaDefs

  standardViaVariants(
    ;( viaVariantName	viaDefName	(cutLayer cutWidth cutHeight)
    ;  (cutRows cutCol (cutSpace))
    ;  (layer1Enc) (layer2Enc)	(layer1Offset) (layer2Offset)	(origOffset)
    ;  (implant1Enc)	(implant2Enc) )
    
  ) ;standardViaVariants

  customViaVariants(
    ;( viaVariantName viaDefName
    ;	 viaParams )
    
  ) ;customViaVariants

) ;viaDefs

constraintGroups(
) ;constraintGroups

