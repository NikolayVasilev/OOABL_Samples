
/*------------------------------------------------------------------------
    File        : Power.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : nvasilev
    Created     : Thu Jul 23 17:21:47 EEST 2020
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.


DEFINE INPUT  PARAMETER piA       AS INTEGER     NO-UNDO.
DEFINE INPUT  PARAMETER piB       AS INTEGER     NO-UNDO.
DEFINE OUTPUT PARAMETER pdeResult AS DECIMAL     NO-UNDO.

DEFINE VARIABLE ix AS INTEGER NO-UNDO.
pdeResult = 1.


    
DO ix = 1 TO piB:
    pdeResult = pdeResult * piA.
END.  

