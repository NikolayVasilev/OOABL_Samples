 
/*------------------------------------------------------------------------
   File        : Car
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : nvasilev
   Created     : Fri Jul 24 12:05:01 EEST 2020
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OOPExamples.Vehicle.

BLOCK-LEVEL ON ERROR UNDO, THROW.

class OOPExamples.Car inherits OOPExamples.Vehicle:    
    define public property  HorsePower as Integer 
        get. 
        set.
    define private variable engineRunning as Logical.
    
    method public void Start(): 
        PowerOn().
        
        do while (engineRunning <> false):
            StarterOn().
        end.
        
        engineRunning = true.
        StarterOff().
    end method.  
    method public void Stop():  end method.  
    
    method private void PowerOn():    end method.  
    method private void StarterOn():  end method.  
    method private void StarterOff(): end method.  
end class.