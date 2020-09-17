 
/*------------------------------------------------------------------------
   File        : Vehicle
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : nvasilev
   Created     : Fri Jul 24 11:47:11 EEST 2020
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS OOPExamples.Vehicle:    
    DEFINE PUBLIC PROPERTY Make  AS CHARACTER 
        GET. 
        SET.
    DEFINE PUBLIC PROPERTY Model AS CHARACTER 
        GET. 
        SET.
        
    METHOD PUBLIC VOID Drive(): END METHOD.  
END CLASS.