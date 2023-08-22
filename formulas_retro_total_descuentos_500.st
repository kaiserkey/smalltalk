"Formulas para el calculo de descuentos como el 500 - total remuneraciones"

"----------Liquidacion Normal----------"

"----------Cantidad----------"
{VALOR_VAR_EXT_CONCEPTO}

"----------Condicion----------"

({TIENE_AFILIACION_GREMIO_AGENTE}) and:[theTarget esReliquidacion not and:[{EXISTE_LIQUIDACION_DEFINITIVA} not]] .

"----------Valor----------"

|base baseRetro valor|

baseRetro:=({LIQUIDACIONES_DE_RELIQUIDACION}  inject:0 into:[:t :each| t + ((each totalTipoConcepto:(IpsRhTipoConceptoLiquidacion remuneracionConAportes) ))]).

base:= ((theTarget totalTipoConcepto:(IpsRhTipoConceptoLiquidacion remuneracionConAportes) )).

valor:=(((base* {VALOR_VAR_EXT_CONCEPTO} / 100)) + (((baseRetro * {VALOR_VAR_EXT_CONCEPTO} / 100)) - {TOTAL_CONCEPTO_RETRO})).

valor.


"----------Liquidacion Complementaria----------"
"----------Cantidad----------"

{VALOR_VAR_EXT_CONCEPTO}

"----------Condicion----------"

({TIENE_AFILIACION_GREMIO_AGENTE}) and:[theTarget esReliquidacion not and:[{EXISTE_LIQUIDACION_DEFINITIVA}]] .

"----------Valor----------"

|base baseRetro valor liqsRetro liqsSac|

liqsRetro:= {LIQUIDACIONES_DE_RELIQUIDACION}.

baseRetro:=( liqsRetro inject:0 into:[:t :each| 
t + ((each  totalTipoConcepto:(IpsRhTipoConceptoLiquidacion remuneracionConAportes)))
]).

base:= (theTarget totalTipoConcepto:(IpsRhTipoConceptoLiquidacion remuneracionConAportes) ) .

valor:=(((base* {VALOR_VAR_EXT_CONCEPTO} / 100)) + (((baseRetro - {TOTAL_REMU_APORTES_RETROACTIVO}) * {VALOR_VAR_EXT_CONCEPTO} / 100))).

valor.


"----------Reliq en Comple----------"
"----------Cantidad----------"

{VALOR_VAR_EXT_CONCEPTO}

"----------Condicion----------"-

({TIENE_AFILIACION_GREMIO_AGENTE}) and:[theTarget esReliquidacion and:[{EXISTE_LIQUIDACION_DEFINITIVA}]] .

"----------Valor----------"


|base retorno valor|

base:= ({LIQ_CARGO_RETRO_PERIODO} inject:0 into:[:t :each| t + ((each totalConceptosCodigos:(OrderedCollection with: (theTarget conceptoLiquidado code) )periodo: each periodoLiquidado))]).

base.





