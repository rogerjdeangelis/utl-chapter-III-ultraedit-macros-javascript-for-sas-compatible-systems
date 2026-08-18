var sourceDoc  = UltraEdit.activeDocument;
var sasCode    = sourceDoc.selection;

UltraEdit.messageBox(sasCode);   // TEMPORARY — check this shows only your highlighted code

var tempProgram = "C:\\utl\\runsas_selection.sas";
var logFile     = "C:\\otojnr\\current.log";
var lstFile     = "C:\\otojnr\\current.lst";

if (!sasCode || sasCode.length === 0) {
    UltraEdit.messageBox("No text selected — highlight some SAS code first.");
} else {
    UltraEdit.closeFile(logFile, 0);
    UltraEdit.closeFile(lstFile, 0);

    UltraEdit.newFile();
    UltraEdit.activeDocument.write(sasCode);
    UltraEdit.saveAs(tempProgram);
    UltraEdit.closeFile(tempProgram, 0);

    UltraEdit.runTool("run_selection");

    UltraEdit.open(logFile);
    UltraEdit.open(lstFile);
}