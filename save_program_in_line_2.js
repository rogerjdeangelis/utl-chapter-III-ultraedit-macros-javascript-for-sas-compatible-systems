UltraEdit.outputWindow.showStatus = false;
UltraEdit.outputWindow.showWindow();

if (!UltraEdit.activeDocument) {
    UltraEdit.outputWindow.write("ERROR: No active document.");
    UltraEdit.messageBox("No active document.");
} else {
    var sourceDoc = UltraEdit.activeDocument;
    var savedLine = sourceDoc.currentLineNum;
    var savedColumn = sourceDoc.currentColumnNum;

    sourceDoc.selectAll();
    var programText = sourceDoc.selection;
    sourceDoc.gotoLine(savedLine, savedColumn);

    var lines = programText.split(/\r\n|\n|\r/);

    if (lines.length < 2) {
        UltraEdit.outputWindow.write("ERROR: The document has no line 2.");
        UltraEdit.messageBox("The active document has no line 2.");
    } else {
        var targetFile = lines[1].replace(/^\s+|\s+$/g, "");

        UltraEdit.outputWindow.write(
            "Target file read from line 2: [" + targetFile + "]"
        );

        if (targetFile.length === 0) {
            UltraEdit.outputWindow.write("ERROR: Line 2 is blank.");
            UltraEdit.messageBox(
                "Line 2 is blank.\r\n\r\n" +
                "Put the full target pathname on line 2."
            );
        } else if (!/^[A-Za-z]:[\\/]/.test(targetFile)) {
            UltraEdit.outputWindow.write(
                "ERROR: Not a full Windows path: [" + targetFile + "]"
            );
            UltraEdit.messageBox(
                "Line 2 is not a full Windows file path:\r\n\r\n[" +
                targetFile + "]"
            );
        } else {
            UltraEdit.newFile();
            UltraEdit.activeDocument.write(programText);

            UltraEdit.outputWindow.write(
                "Saving copy as: [" + targetFile + "]"
            );

            UltraEdit.saveAs(targetFile);

            UltraEdit.outputWindow.write(
                "Save command completed: [" + targetFile + "]"
            );

            UltraEdit.messageBox(
                "Saved copy to:\r\n" + targetFile
            );
        }
    }
}