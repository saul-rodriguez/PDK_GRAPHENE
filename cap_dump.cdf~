
/****************************************************/
 LIBRARY = "GPDK_1UM"
 CELL    = "cap"
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
        ?defValue       "mcap"
        ?type           "string"
        ?display        "artParameterInToolDisplay('model)"
        ?storeDefault  "yes"
        ?parseAsCEL     "yes"
		?editable  "nil " 
    )
    cdfCreateParam( cdfId
        ?name           "c"
        ?prompt         "Capacitance"
        ?units          "capacitance"
        ?defValue       "1p"
        ?type           "string"
        ?display        "artParameterInToolDisplay('c)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "w"
        ?prompt         "Width"
        ?units          "lengthMetric"
        ?defValue       "10u"
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
        ?defValue       "10u"
        ?type           "string"
        ?display        "artParameterInToolDisplay('l)"
        ?storeDefault  "yes"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ams = '( nil
        extraTerminals    nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        enumParameters    nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        componentName     (capacitor)
        isPrimitive       (t)
        termOrder         (PLUS MINUS)
        termMapping       (FUNCTION _amsCapTermMapping)
        instParameters    (c w l m scale trise ic tc1 tc2 model)
        otherParameters   (model)
    )
    cdfId->simInfo->auCdl = '( nil
        dollarEqualParams nil
        dollarParams      nil
        otherParameters   nil
        netlistProcedure  ansCdlCompPrim
        instParameters    (C)
        componentName     cap
        termOrder         (PLUS MINUS)
        propMapping       (nil C c)
        namePrefix        "C"
        modelName         "mcap"
    )
    cdfId->simInfo->auLvs = '( nil
        deviceTerminals   ""
        otherParameters   nil
        propMapping       nil
        netlistProcedure  ansLvsCompPrim
        instParameters    (c)
        componentName     cap
        termOrder         (PLUS MINUS)
        permuteRule       "(p PLUS MINUS)"
        namePrefix        "C"
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        propMapping       nil
        otherParameters   (model)
        netlistProcedure  hspiceDCompPrim
        instParameters    (c tc1 tc2 scale dtemp m w l ic polyCoef c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20)
        componentName     cap
        termOrder         (PLUS MINUS)
        namePrefix        "C"
        termMapping       (nil PLUS "" MINUS "(FUNCTION minus(root(\"PLUS\")))")
        noPortDelimiter   t
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        otherParameters   (model)
        instParameters    (c w l m scale trise ic tc1 tc2 area perim)
        termOrder         (PLUS MINUS)
        termMapping       (nil PLUS \:1 MINUS "(FUNCTION minus(root(\"PLUS\")))")
        componentName     capacitor
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->opPointLabelSet         = "i"
    cdfId->paramLabelSet           = "c ic"
	cdfId->paramDisplayMode 	   = "parameter"
    cdfSaveCDF( cdfId )
)
