 
/*------------------------------------------------------------------------
   File        : Math
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : nvasilev
   Created     : Thu Jul 23 16:45:46 EEST 2020
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.


BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Samples.Math: 

    METHOD PUBLIC STATIC DECIMAL Add(A AS DECIMAL, B AS DECIMAL):
        
        DEFINE VARIABLE iResult AS DECIMAL NO-UNDO.
               
        DEFINE VARIABLE hAddNumbers AS HANDLE NO-UNDO.

        RUN AddNumbers.p PERSISTENT SET hAddNumbers. 

        RUN AddAToB IN hAddNumbers (INPUT A, INPUT B, OUTPUT iResult).

        DELETE OBJECT hAddNumbers.
        
        
        RETURN iResult.
    END METHOD.

    METHOD PUBLIC STATIC DECIMAL Pow(A AS DECIMAL, B AS DECIMAL):
        
        DEFINE VARIABLE iResult AS DECIMAL NO-UNDO.
        
        RUN Samples\Power(A, B, OUTPUT iResult).
        
        
        RETURN iResult.
    END METHOD.

END CLASS.