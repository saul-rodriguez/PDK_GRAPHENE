/*********************************/
/* CHARACTERIZATION LIBRARY GFET V1.0 */
/* Author: Saul Rodriguez        */
/* Date: 2013-08-17              */
/*********************************/

simulator( 'spectre )
design(	 "CHARACTERIZATION" "FAST_BIAS_V" "schematic")
; design(	 "/afs/ict.kth.se/home/s/a/saul/simulation/FAST_BIAS/spectre/schematic/netlist/netlist")
resultsDir( "~/simulation/FAST_BIAS/spectre/schematic" )

;createNetlist

load("OS/CHARACTERIZATION/global.il")

analysis('dc ?saveOppoint t  )

desVar(	  "VGS1" VGS1	)
desVar(	  "VDS1" VDS1	)
;desVar(	  "IDS1" IDS1	)
desVar(	  "L1" L1	)
desVar(	  "NF" NF	)
desVar(	  "W1" W1	)

desVar(	  "VGS2" VGS2	)
desVar(	  "VDS2" VDS2	)
;desVar(	  "IDS2" IDS2	)
desVar(	  "L2" L2	)
;desVar(	  "NF2" NF	)
desVar(	  "W2" W2	)

desVar(	  "VGS3" VGS3	)
desVar(	  "VDS3" VDS3	)
;desVar(	  "IDS3" IDS3	)
desVar(	  "L3" L3	)
;desVar(	  "NF3" NF	)
desVar(	  "W3" W3	)

envOption(
	'analysisOrder  list("dc") 
)
temp( 27 ) 
run()

selectResults('dcOpInfo)
vgs1 = OP("/I0/M0","vgs")
gm1 = OP("/I0/M0","gm")
rds1 = 1.0/OP("/I0/M0","gds")
gain1 = gm1*rds1
gm_id1 = OP("/I0/M0","gm_id")
cgs1 = 1e15*OP("/I0/M0","Cgs")
cgd1 = 1e15*OP("/I0/M0","Cgd")
ft1 = OP("/I0/M0","ft")/1e6
IDS1 = OP("/I0/M0","ids")

selectResults('dcOpInfo)
vgs2 = OP("/I3/M0","vgs")
gm2 = OP("/I3/M0","gm")
rds2 = 1.0/OP("/I3/M0","gds")
gain2 = gm2*rds2
gm_id2 = OP("/I3/M0","gm_id")
cgs2 = 1e15*OP("/I3/M0","Cgs")
cgd2 = 1e15*OP("/I3/M0","Cgd")
ft2 = OP("/I3/M0","ft")/1e6
IDS2 = OP("/I3/M0","ids")

vgs3 = OP("/I4/M0","vgs")
gm3 = OP("/I4/M0","gm")
rds3 = 1.0/OP("/I4/M0","gds")
gain3 = gm3*rds3
gm_id3 = OP("/I4/M0","gm_id")
cgs3 = 1e15*OP("/I4/M0","Cgs")
cgd3 = 1e15*OP("/I4/M0","Cgd")
ft3 = OP("/I4/M0","ft")/1e6
IDS3 = OP("/I4/M0","ids")

;****** Printing Results on the CIW log ********

printf("\n\n\n*************************\n")
printf("* FAST BIASING RESULTS GFET *  \n")
printf("*************************\n\n")

printf("GFET1: W1 = %4.2fum  L1 = %4.2fum  IDS1 = %4.4fmA  VDS1 = %4.2fV\n" 1e6*W1 1e6*L1 1e3*IDS1 VDS1)
printf("  gm1 = %4.3fm\n  rds1 = %4.2f\n  cgs1 = %4.2ff\n  cgd1 = %4.2ff\n  vgs1 = %5.4f\n  Gain1 = %4.2f\n" 1e3*gm1 rds1 cgs1 cgd1 vgs1 gain1)
printf("  gm_id1 = %4.2f\n  Ft1 = %4.2f MHz \n\n" gm_id1 ft1)

printf("GFET1: W2 = %4.2fum  L1 = %4.2fum  IDS1 = %4.4fmA  VDS1 = %4.2fV\n" 1e6*W2 1e6*L2 1e3*IDS2 VDS2)
printf("  gm2 = %4.3fm\n  rds2 = %4.2f\n  cgs2 = %4.2ff\n  cgd2 = %4.2ff\n  vgs2 = %5.4f\n  Gain2 = %4.2f\n" 1e3*gm2 rds2 cgs2 cgd2 vgs2 gain2)
printf("  gm_id2 = %4.2f\n  Ft2 = %4.2f MHz \n\n" gm_id2 ft2)

printf("GFET3: W3 = %4.2fum  L3 = %4.2fum  IDS3 = %4.4fmA  VDS3 = %4.2fV\n" 1e6*W3 1e6*L3 1e3*IDS3 VDS3)
printf("  gm3 = %4.3fm\n  rds3 = %4.2f\n  cgs3 = %4.2ff\n  cgd3 = %4.2ff\n  vgs3 = %5.4f\n  Gain3 = %4.2f\n" 1e3*gm3 rds3 cgs3 cgd3 vgs3 gain3)
printf("  gm_id3 = %4.2f\n  Ft3 = %4.2f MHz \n\n" gm_id3 ft3)

