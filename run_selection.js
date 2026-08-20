var sourceDoc = UltraEdit.activeDocument;

var tempProgram = "C:\\otojnr\\runsas_selection.sas";
var logFile = "C:\\otojnr\\current.log";
var lstFile = "C:\\otojnr\\current.lst";

if (!sourceDoc.selection || sourceDoc.selection.length === 0) {

    UltraEdit.messageBox(
        "No text selected.\r\n\r\n" +
        "Highlight SAS code first."
    );

} else {

    /*
      Copy the highlighted text from the SAS program editor.
    */
    sourceDoc.copy();

    /*
      Open the fixed SAS submission file.
    */
    UltraEdit.open(tempProgram);

    /*
      Replace all old submitted code with the highlighted code.
    */
    UltraEdit.activeDocument.selectAll();
    UltraEdit.activeDocument.paste();

    /*
      Save the new code and close the runner-file tab.
      1 = save, then close.
    */
    UltraEdit.closeFile(tempProgram, 1);

    /*
      Run the mapped UltraEdit User Tool.
    */
    UltraEdit.runTool("run_selection");

    /*
      Open the Jenner log file.
    */
    UltraEdit.open(logFile);

    /*
      Open the Jenner listing file.
    */
    UltraEdit.open(lstFile);
}