UltraEdit.outputWindow.showWindow();
UltraEdit.outputWindow.showStatus = false;

var sourceDoc = UltraEdit.activeDocument;
var sasCode = sourceDoc.selection;

// Normalize characters that silently break UTF-8/ANSI compatibility
// when code is copied from web pages, Word, or PDFs
sasCode = sasCode.replace(/\u00A0/g, " ");   // non-breaking space → regular space
sasCode = sasCode.replace(/[\u2018\u2019]/g, "'");  // smart single quotes → '
sasCode = sasCode.replace(/[\u201C\u201D]/g, '"');  // smart double quotes → "
sasCode = sasCode.replace(/[\u2013\u2014]/g, "-");  // en/em dash → hyphen


var tempProgram = "C:\\otojnr\\runsas_selection.sas";
var logFile = "C:\\otojnr\\current.log";
var lstFile = "C:\\otojnr\\current.lst";

if (!sasCode || sasCode.length === 0) {
    UltraEdit.messageBox(
        "No text selected.\r\n\r\nHighlight SAS code, then run this script."
    );
} else {
    UltraEdit.outputWindow.write(
        "Selected characters: " + sasCode.length
    );

    UltraEdit.outputWindow.write(
        "Saving selected code to: " + tempProgram
    );

    UltraEdit.closeFile(logFile, 0);
    UltraEdit.closeFile(lstFile, 0);

    UltraEdit.newFile();
    UltraEdit.activeDocument.write(sasCode);
	
    UltraEdit.saveAs(tempProgram);

    UltraEdit.outputWindow.write(
        "Saved temporary program: " + UltraEdit.activeDocument.path
    );

  
    UltraEdit.outputWindow.write(
        "Running User Tool: run_selection"
    );

    UltraEdit.runTool("run_selection");

    UltraEdit.outputWindow.write(
        "Opening log: " + logFile
    );
    UltraEdit.open(logFile);

    UltraEdit.outputWindow.write(
        "Opening listing: " + lstFile
    );
    UltraEdit.open(lstFile);
}