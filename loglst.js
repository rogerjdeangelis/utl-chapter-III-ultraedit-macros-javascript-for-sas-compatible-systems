var files = [
    "C:\\jnr\\current.log",
    "C:\\jnr\\current.lst"
];             
             
for (var i = 0; i < files.length; i++) {           
    UltraEdit.open(files[i]);             
             
    UltraEdit.activeDocument.selectAll();          
    UltraEdit.activeDocument.deleteText();         
    UltraEdit.save();             
}             