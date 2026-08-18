UltraEdit.outputWindow.showStatus = false;

if (!UltraEdit.activeDocument) {
    UltraEdit.messageBox("No active document.");
} else {
    var sourceDoc = UltraEdit.activeDocument;
    var savedLine = sourceDoc.currentLineNum;
    var savedColumn = sourceDoc.currentColumnNum;

    sourceDoc.gotoLineSelect(2, 1);
    var targetFile = sourceDoc.selection.replace(/^\s+|\s+$/g, "");

    sourceDoc.gotoLine(savedLine, savedColumn);

    if (targetFile.length === 0) {
        UltraEdit.messageBox("Line 2 is blank. Put the target file path on line 2.");
    } else {
        sourceDoc.selectAll();
        var programText = sourceDoc.selection;
        sourceDoc.gotoLine(savedLine, savedColumn);

        UltraEdit.newFile();
        UltraEdit.activeDocument.write(programText);
        UltraEdit.saveAs(targetFile);

        UltraEdit.messageBox("Saved copy to:\r\n" + targetFile);
    }
}