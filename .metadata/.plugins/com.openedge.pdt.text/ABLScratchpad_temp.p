{Samples/AddNumbers.p}

DEFINE VARIABLE iResult AS INTEGER NO-UNDO.
        
RUN AddAToB(2, 3, OUTPUT iResult).

MESSAGE iResult
VIEW-AS ALERT-BOX.