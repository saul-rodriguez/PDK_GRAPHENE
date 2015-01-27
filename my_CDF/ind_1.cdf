
/****************************************************/
 LIBRARY = "GPDK_1UM"
 CELL    = "ind_1"
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
        ?defValue       "ind_1"
        ?type           "string"
        ?display        "artParameterInToolDisplay('model)"
        ?editable       "nil"
        ?storeDefault  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "l"
        ?prompt         "Inductance"
        ?units          "inductance"
        ?defValue       "1n"
        ?type           "string"
        ?display        "artParameterInToolDisplay('l)"
        ?storeDefault  "yes"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "r"
        ?prompt         "Resistance"
        ?units          "resistance"
        ?defValue       "1"
        ?type           "string"
        ?use            "t"
        ?display        "artParameterInToolDisplay('r)"
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
        componentName     (inductor)
        isPrimitive       (t)
        termOrder         (PLUS MINUS)
        termMapping       (FUNCTION _amsIndTermMapping)
        instParameters    (l r m trise ic model)
        otherParameters   (model)
    )
    cdfId->simInfo->auCdl = '( nil
        dollarEqualParams nil
        dollarParams      nil
        otherParameters   nil
        netlistProcedure  ansCdlCompPrim
        instParameters    (L)
        componentName     ind_1
        termOrder         (PLUS MINUS)
        propMapping       (nil L l)
        namePrefix        "L"
        modelName         "ind_1"
    )
    cdfId->simInfo->auLvs = '( nil
        deviceTerminals   ""
        otherParameters   nil
        propMapping       nil
        netlistProcedure  ansLvsCompPrim
        instParameters    (l)
        componentName     ind_1
        termOrder         (PLUS MINUS)
        permuteRule       "(p PLUS MINUS)"
        namePrefix        "L"
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        otherParameters   nil
        propMapping       nil
        netlistProcedure  hspiceDCompPrim
        instParameters    (l r tc1 tc2 scale m dtemp ic polyCoef c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20)
        componentName     ind
        termOrder         (PLUS MINUS)
        namePrefix        "L"
        termMapping       (nil PLUS "" MINUS "(FUNCTION minus(root(\"PLUS\")))")
        noPortDelimiter   t
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        namePrefix        ""
        netlistProcedure  _spectreInd
        otherParameters   (model polyCoef c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20)
        instParameters    (l r m trise ic tc1 tc2 isnoisy scalei)
        propMapping       (nil scalei scale)
        termOrder         (PLUS MINUS)
        termMapping       (nil PLUS \:1 MINUS "(FUNCTION minus(root(\"PLUS\")))")
        componentName     inductor
        currentProbe      t
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->paramDisplayMode        = "parameter"
    cdfId->opPointLabelSet         = "i"
    cdfId->paramLabelSet           = "l ic"
    cdfSaveCDF( cdfId )
)
