
/****************************************************/
 LIBRARY = "GPDK_1UM"
 CELL    = "gfet"
/****************************************************/

let( ( libId cellId cdfId )
    unless( cellId = ddGetObj( LIBRARY CELL )
        error( "Could not get cell %s." CELL )
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )

    ;;; Parameters
    cdfCreateParam( cdfId
        ?name           "model"
        ?prompt         "Model name"
        ?defValue       "gfet"
        ?type           "string"
        ?display        "artParameterInToolDisplay('model)"
        ?storeDefault  "yes"
        ?parseAsCEL     "yes"
		?editable  "nil " 
    )
    cdfCreateParam( cdfId
        ?name           "w"
        ?prompt         "Width"
        ?units          "lengthMetric"
        ?defValue       "1u"
        ?type           "string"
        ?display        "artParameterInToolDisplay('w)"
        ?storeDefault  "yes"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "l"
        ?prompt         "Length"
        ?units          "lengthMetric"
        ?defValue       "1u"
        ?type           "string"
        ?display        "artParameterInToolDisplay('l)"
        ?storeDefault  "yes"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ams = '( nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        isPrimitive       (t)
        enumParameters    (region degradation)
        extraTerminals    ((nil name "B" direction "inputOutput" netExpr "[@bulk_n:%:gnd!]"))
        termOrder         (D G S B)
        termMapping       (nil D \:d G \:g S \:s B \:b)
        instParameters    (w l as ad ps pd nrd nrs ld ls m trise model geo rdc rsc sa sb sd)
        otherParameters   (model)
    )
    cdfId->simInfo->auCdl = '( nil
        dollarEqualParams nil
        dollarParams      nil
        netlistProcedure  ansCdlCompPrim
        otherParameters   (bn)
        instParameters    (m L W)
        componentName     gfet
        termOrder         (D G S)
        propMapping       (nil L l W w)
        namePrefix        "M"
        modelName         "gfet"
    )
    cdfId->simInfo->auLvs = '( nil
        propMapping       nil
        netlistProcedure  ansLvsCompPrim
        otherParameters   (bn)
        instParameters    (m l w)
        componentName     gfet
        termOrder         (D G S)
        deviceTerminals   "D G S "
        permuteRule       "(p D S)"
        namePrefix        "M"
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        termMapping       (nil D \,D G \,G S \,S)
        netlistProcedure  hspiceDCompPrim
        instParameters    (l w ad as pd ps nrd nrs rdc rsc off Vds Vgs Vbs dtemp geo m)
        otherParameters   (model)
        componentName     nmos
        termOrder         (D G S)
        dataAccessMap     ((IDC (D "id")))
        propMapping       (nil vds Vds vgs Vgs vbs Vbs)
        namePrefix        "M"
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        componentName     nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        otherParameters   (model)
        instParameters    (w l as ad ps pd nrd nrs ld ls m trise region degradation geo rdc rsc sa sb sd)
        termOrder         (D G S)
        termMapping       (nil D \:d G \:g S \:s)
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->modelLabelSet           = "vto kp gamma"
    cdfId->opPointLabelSet         = "id vgs vds"
    cdfId->paramLabelSet           = "-model l w"
	cdfId->paramDisplayMode = "parameter" 
    cdfSaveCDF( cdfId )
)
