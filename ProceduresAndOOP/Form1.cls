 
/*------------------------------------------------------------------------
   File        : Form1
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : 
   Created     : 
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.
USING Samples.Math FROM PROPATH.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Form1 INHERITS Form: 
	
    DEFINE PRIVATE VARIABLE button1 AS System.Windows.Forms.Button NO-UNDO.
    DEFINE PRIVATE VARIABLE button2 AS System.Windows.Forms.Button NO-UNDO.
    DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
    DEFINE PRIVATE VARIABLE numeric2 AS System.Windows.Forms.NumericUpDown NO-UNDO.
    DEFINE PRIVATE VARIABLE numeric1 AS System.Windows.Forms.NumericUpDown NO-UNDO.
		
    CONSTRUCTOR PUBLIC Form1 (  ):

        InitializeComponent().
        THIS-OBJECT:ComponentsCollection:Add(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

    END CONSTRUCTOR.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID button1_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
        DEFINE VARIABLE iResult AS DECIMAL NO-UNDO.
		
        iResult = Math:Add(4, 7).
        
        iResult = Math:Add(THIS-OBJECT:numeric1:Value, THIS-OBJECT:numeric2:Value).
        
		MESSAGE String(THIS-OBJECT:numeric1:Value) + " + " + String(THIS-OBJECT:numeric2:Value) + " is: " + String(iResult)
        VIEW-AS ALERT-BOX.
		
        RETURN.

    END METHOD.

	/*------------------------------------------------------------------------------
	 Purpose:
	 Notes:
	------------------------------------------------------------------------------*/
	@VisualDesigner.
	METHOD PRIVATE VOID button2_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
		DEFINE VARIABLE iResult AS DECIMAL NO-UNDO.
        
        iResult = Math:Pow(THIS-OBJECT:numeric1:Value, THIS-OBJECT:numeric2:Value).
        
        MESSAGE String(THIS-OBJECT:numeric1:Value) + " to the power of " + String(THIS-OBJECT:numeric2:Value) + " is: " + String(iResult)
        VIEW-AS ALERT-BOX.
        
		RETURN.

	END METHOD.

	/*------------------------------------------------------------------------------
	 Purpose:
	 Notes:
	------------------------------------------------------------------------------*/
	@VisualDesigner.
	METHOD PRIVATE VOID Form1_Load( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
		
		RETURN.

	END METHOD.

    METHOD PRIVATE VOID InitializeComponent(  ):
		
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:button1 = NEW System.Windows.Forms.Button().
        THIS-OBJECT:button2 = NEW System.Windows.Forms.Button().
        THIS-OBJECT:numeric1 = NEW System.Windows.Forms.NumericUpDown().
        THIS-OBJECT:numeric2 = NEW System.Windows.Forms.NumericUpDown().
        CAST(THIS-OBJECT:numeric1, System.ComponentModel.ISupportInitialize):BeginInit().
        CAST(THIS-OBJECT:numeric2, System.ComponentModel.ISupportInitialize):BeginInit().
        THIS-OBJECT:SuspendLayout().
        /*  */
        /* button1 */
        /*  */
        THIS-OBJECT:button1:Location = NEW System.Drawing.Point(12, 47).
        THIS-OBJECT:button1:Name = "button1".
        THIS-OBJECT:button1:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:button1:TabIndex = 0.
        THIS-OBJECT:button1:Text = "Click to add".
        THIS-OBJECT:button1:UseCompatibleTextRendering = TRUE.
        THIS-OBJECT:button1:UseVisualStyleBackColor = TRUE.
        THIS-OBJECT:button1:Click:Subscribe(THIS-OBJECT:button1_Click).
        /*  */
        /* button2 */
        /*  */
        THIS-OBJECT:button2:Location = NEW System.Drawing.Point(94, 47).
        THIS-OBJECT:button2:Name = "button2".
        THIS-OBJECT:button2:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:button2:TabIndex = 1.
        THIS-OBJECT:button2:Text = "Click to power".
        THIS-OBJECT:button2:UseCompatibleTextRendering = TRUE.
        THIS-OBJECT:button2:UseVisualStyleBackColor = TRUE.
        THIS-OBJECT:button2:Click:Subscribe(THIS-OBJECT:button2_Click).
        /*  */
        /* numeric1 */
        /*  */
        THIS-OBJECT:numeric1:Location = NEW System.Drawing.Point(12, 12).
        THIS-OBJECT:numeric1:Name = "numeric1".
        THIS-OBJECT:numeric1:Size = NEW System.Drawing.Size(75, 20).
        THIS-OBJECT:numeric1:TabIndex = 3.
        /*  */
        /* numeric2 */
        /*  */
        THIS-OBJECT:numeric2:Location = NEW System.Drawing.Point(94, 12).
        THIS-OBJECT:numeric2:Name = "numeric2".
        THIS-OBJECT:numeric2:Size = NEW System.Drawing.Size(75, 20).
        THIS-OBJECT:numeric2:TabIndex = 4.
        /*  */
        /* Form1 */
        /*  */
        THIS-OBJECT:ClientSize = NEW System.Drawing.Size(292, 266).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:numeric2).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:numeric1).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:button2).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:button1).
        THIS-OBJECT:Name = "Form1".
        THIS-OBJECT:Text = "Form1".
        THIS-OBJECT:Load:Subscribe(THIS-OBJECT:Form1_Load).
        CAST(THIS-OBJECT:numeric1, System.ComponentModel.ISupportInitialize):EndInit().
        CAST(THIS-OBJECT:numeric2, System.ComponentModel.ISupportInitialize):EndInit().
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.
    END METHOD.

    DESTRUCTOR PUBLIC Form1 ( ):

    END DESTRUCTOR.

END CLASS.