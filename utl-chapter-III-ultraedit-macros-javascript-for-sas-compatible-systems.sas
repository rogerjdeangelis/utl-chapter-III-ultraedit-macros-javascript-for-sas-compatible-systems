     /*--- Save my program
     c:/utl/utl-chapter-III-ultraedit-macros-javascript-for-sas-compatible-systems.sas 
     ---*/   
                      
     Chapter III ultraedit macros javascript for sas compatible systems
     
     Too long to post, see github   
     https://github.com/rogerjdeangelis/utl-chapter-III-ultraedit-macros-javascript-for-sas-compatible-systems
      
     Previous Chapters
     https://github.com/rogerjdeangelis/utl-chapter-I-configuration-and-ultraedit-setup-for-sas-compatible-systems
     https://github.com/rogerjdeangelis/utl-chapter-II-ultraedit-key-mapping-for-sas-compatible-systems
        
     Useful Documentation 
     https://wiki.ultraedit.com/Macro_commands    
         
     SAS DMS IDE 
     https://github.com/rogerjdeangelis/utl_classic_sas_editor_display_manager_commands_improved  
         
     UltraEdit Version 2025.1.0.31 64-bit   
     
     When you want save production code somewhere else. Press Ctl+Alt+2 to save your program in
     the path in line 2 of the editor. If the selection does not pop up the program was not saved.
     
     Note: Vertical Tileing with Ctrl + Alt + T is your friend, When You run some tools the three panels  
     sometimes get distorted. Popup windows and javascript logs may shrink your panels.
     
     Once you view the pop up windows or additional screens you need to close them, click on X in upperleft.
     After that you can just Ctrl + Alt + T to re-tile. You may need to hit Ctrl + Alt + T twice to
     maximize the panels. Keep in mind, you need to reduce the number of window to three for
     Ctrl + Alt + T to work. UltraEdit will not tile vertically more than three windows. You can
     spread ultraedit over three monitors. 
     
     Ultraedit is close to having a command line. However you cannot dock the 'command palate'(ctrl+shift+P).
     You cannot filter or change the order of command list. 
       
     Note:  C:\slc\current.lst, c:\slc\current.sas, and  c:\slc\current.log are a sandbox.
                 
     Hote the Quick Find Dock Ctrl+F            
                        
     /****************************************************************************************/                   
     /* C:\slc\current.lst | c:\slc\current.sas | c:\slc\current.log  Find[        ] v ^     */                   
     /*                    |                    |                                            */                   
     /* ..                 |                    |                                            */                   
     /****************************************************************************************/                   
                        
     The top ribbon(ribbon GUI) must look like this to use this documentation (not the other two))
      
      File  Home  Edit  Format  View  Coding  Project  Layout  Window  Advanced 
      
      It is very impotant to know if you have Insert mode or column more is active
      
      It should be possible to program some of your hotkeys using a programmable mouse, like 
      the logitech hero G502. Point and shoot programming. see
     
     CONTENTS
     --------
     
      I. Macros and updated Move/Overlay/Insert Blocks of code 
      
          a. Move/Overlay/Insert Blocks of code
          b. Reduce multiple spaces to a single space (macro with perl)                                                                       
          c. Using Templates to insert a box comment  (type box anywhere in editor and hit enter)                                                         
    
     II. Javascript Tools    
     
          a.  Clear log and list 
          b.  Setup Jenner CLI		
          c.  Run highlighted code  
          d.  Save program using path in line 2 of editor  (Ctrl + Alt + 2) 
           
     III. List of enhanced functionality (full cheat sheet)  
          a Full cheat sheet                                                                      
                   
                   
                   
      I. Macros and updated Move/Overlay/Insert Blocks of code.
      
         a. Move/Overlay/Insert Blocks of code. Set column mode, Shift + Alt Highlight, Ctrl + C then Ctrl + V
             
              Given these
              
              /*********************
              /* C:\slc\current.lst                                                                   
              /*                                                                                      
              /* ..                                                                                   
              /*********************                                                                  
                                                                                
              *********************************************/                                                   
              | c:\slc\current.sas | c:\slc\current.log   */                                                   
              |                    |                      */                                                   
              |                    |                      */                                                   
              *********************************************/                                                   
                  
              Create this                                                                    
                                                                                
              Make sure you are in column mode. Place cursor before the first * in longer block then           
              hold down Shift+Alt and highlight the longer block then Ctrl+C. 
              Place the cursor where you want the block of text and hit Ctrl+V                                             
              
              /******************************************************************/                             
              /* C:\slc\current.lst | c:\slc\current.sas | c:\slc\current.log   */                             
              /*                    |                    |                      */                             
              /* ..                 |                    |                      */                             
              /******************************************************************/                             
                    
             
         b. Multiple spaces reduced to one space using macros and perl 
            
            Advanced > Configure  (in the macro section)
            
            ---------------------
            |Play   Record       |                       
            |       Load         |
            |       Configure    |  ==> click on this
            ---------------------
                 Macro    
                 
            Enter: compbl (or rename)
            
            Macro Comtents:
            
            IfSel
            HexOff
            ColumnModeOn
            PerlReOn
            Find RegExp SelectText " {2,}"
            Replace All " "
            UltraEditReOn
            ColumnModeOff
            EndIf
                                     
            HotKey: Ctl+Alt+E
     
            Click Save
            
                
            Testing Have
     
            1       2  3     5
            5   3     2       1
      
            Hold Down Alt and highlight the two lines above the Ctrl+C
            
            Ctrl+Alt+E
      
            Want
            
            1 2 3 5
            5 3 2 1
            
            The macro was saved in memory, now you can save the macro  
            to your macro library on disk.
            
            Create a folder to save macros, ie c:/mac
            
            Reopen Configure and click option SaveALL
            
            Save compbl you created in memory to c:/mac
            Click on save 
            
            I think you only need to do this once:
            
            One more setting
            Advanced > Configure > Macro Settings
            
            Macro Filename: C:\mac\compbl.mac
            
            Make sure you save.
            
            Close and Reopen UE to 
            
            
            
         C. Using Templates to insert a box comment  
      
            /*==========================================================================*/
            /*                                                                          */
            /*==========================================================================*/  
      
             Got to
               edit > insert template > modify template 
               
             Template; Group: SAS 9 Modified ( if you are using the sas wordfile Wordfile, otherwise global)  
             
             +: (this allows you to paste your template  text)
             
             Paste this in Content (you need a blank line befote the first line)
        
             /*==========================================================================*/
             /*                                                                          */
             /*==========================================================================*/
        
             Click OK
            
             Make sure auto complete is on  (Advanced > Settings > Templates check the auto complete option)
            
             Now if you type box a blue box will pop up(autocomplete) 
             If you press the enter key the box comment will appear in the editor
      
      
             /*==========================================================================*/
             /*                                                                          */
             /*==========================================================================*/
            
      II. Javascript Tools          
           a. clear log and list     
           
              Save the following javascript in C:\Program Files\IDM Computer Solutions\UltraEdit\scripts\loglst.js.
              This is where UE looks for javascripts
              
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
              
              Advanced > All Scripts > Add    
              
              A window will open showing all scripts in 
              C:\Program Files\IDM Computer Solutions\UltraEdit\scripts
              
              select loglst.js
              
              edit
              
              in the HotKey column
              
              Ctrl+ Alt + L
              
              Ok
            
           b. Set up the jennner CLI
           
                First set up the Jenner CLI Tool 
                
                Go to Advanced> ('hammer icon')>user tools > configuration.
                Fill in
     
                Menu Item Name::
                jnr
                
                Command Line: (you can add other options)                                                                                                     
                jenner %f -sasautos "c:/otojnr" -log "%p%n.log" -print "%p%n.lst" -work "d:/wpswrk"  -sasuser c:\etc -autoexec c:/otojnr/autoexec.sas         
                                                                                                                                              
                Working directory:                                                                                                                            
                c:/slc                                                                                                                              
                                                                                                                                              
                If slc is the first tool, then                                                                                                                
                Menu Item Name 'jnr' is mapped to 'User Tool 1' in advanced > settings (the gear icon)>key mapping                                            
                If you add another menu item, it will be mapped to "User Tool 2"                                                                              
                                                                                                                                              
                Go to advanced > settings (the gear icon)  > toolbar/menu > key mappings                                                                      
                                                                                                                                              
                Select 'User Tool 1'                                                                                                                          
                Ctrl+Alt+J  (in the press new key box to run the jenner CLI)                                                                                  
                Click on the Yellow UE icon and select Close                                                                                                  
         
           c.  Run Highlighter Code
                  
               Save the following javascript in C:\Program Files\IDM Computer Solutions\UltraEdit\scripts\runselection.js.          
               This is where UE looks for javascripts             
                      
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
                       
               Advanced > All Scripts > Add            
                       
               A window will open showing all scripts in         
               C:\Program Files\IDM Computer Solutions\UltraEdit\scripts        
                                                  
               select runselection.js                                   
                                                  
               edit                                   
                                                  
               in the HotKey column                                   
                                                  
               Ctrl + Alt + X                                   
                                                  
               Ok                                   
                                                  
               Highlight the following code and press Ctrl + Alt + X   
               Do not hughlight a block, col off then highlight even the leading spaces                             
                                                  
               data x;  
                  x=2;  
               run;             
               proc print data=x;  
               run;    
               
               output
               
               c:/otojnr/current.lst                             
                     
               LIST:  9:02:03
                 Obs  x
               -----  -
                   1  2
                   
               LOG:   9:02:03
               
               NOTE: Copyright (c) 2026 Jenner Analytics Ltd., London, England.
               NOTE: Jenner v1.5.46 (build v1.5.46+0dff9f1347.20260806T035922Z.x86_64-pc-windows-msvc)
                     Licensed to Roger DeAngelis, Serial XXXXXXXXX
               Jenner v1.5.46
               Licensed to Roger DeAngelis
               Serial: XXXXXXX
               
               NOTE: DATA _null_
               
               autexec started.
     
               NOTE: Wrote _null_ (0 rows, 0 columns).
               NOTE: DATA elapsed:
                 wall  0.00 seconds
                 cpu   0.00 seconds
               NOTE: DATA _null_
               
               LOG:   9:09:59
               NOTE: DATA _null_ completed. Output written to FILE PRINT
               NOTE: Option SASAUTOS changed to c:/otojnr.
               NOTE: Library WORKX assigned path=d:\wpswrkx.
               NOTE: Library SASUSER assigned path=c:/etc.
               NOTE: DATA _null_
               
               autexec completed.
               
               NOTE: Wrote _null_ (0 rows, 0 columns).
               NOTE: DATA elapsed:
                 wall  0.00 seconds
                 cpu   0.00 seconds
               NOTE: DATA x
               
               
               NOTE: Wrote x (1 rows, 1 columns).
               NOTE: DATA elapsed:
                 wall  0.00 seconds
                 cpu   0.00 seconds
               NOTE: PROC PRINT data=x
               
               NOTE: PROC PRINT completed: 
                 
        III. List of enhanced functionality (full cheat sheet) 
         
           a. Bloack moves, shared windows hotkeys and mouse actions 
              1  Move/Overlay a block of text. Set Column mode.
                 Set column mode on > place cursor in front of block of lines > hold down shift+Alt drag > ctrl+C > ctrl+V
                 Column mode must be on for copying, inserting, overwriting, or pasting blocks of text. 
              2  Ctrl+C Copy, Ctrl+V Paste, Ctrl+X Cut, Ctrl+Z Undo, Ctrl+Y redo
              3  Shift Mouse Wheel Shifts Text left and right
              
           b. Ehanced Key Mapping  
            
              1  Ctrl+E           Delete a Line
              2  Ctrl+A Space     Clear any window
              3  Ctrl+S           Save ( chapter II shows how to add versioning)  
              4  F12              save as
              5  Cltrl+F          Docked small persistent find box (very usefull)  
              6  Alt+F3           Find (note if you have selected text, only that text will be seaarched)
              7  Ctrl+R           find/replace (note if you have selected text, only that text will be seaarched)
              8  Ctrl+G           Go to line        
              9  Ctrl+F5          Convert selected text to lowercase
             10  Alt+F5           Convert selected text to uppercase
             11  Ctrl+Shift+D     Duplcate line
             12  Ctrl+E           Delete Line
             13  Ctrl+J           Flow lines (sas TF in prefix area, highlight lines ctrl-J)
             14  Ctrl+B           Select matching [()] - plase cursor before bracket and ctrl+b 
             15  F3               Search Forward(easier than repeated clicls on NEXT in find replace)
             16  Ctrl+F3          Search backward
             17  Ctrl+Home        Cursor at the top of editor (not the top of the visible window)
             18  Ctrl+End         Cursor to the bottom of the editor    
             19  ctrl+Shift+End   Delete All lines to end of file in editor       
             20  Ctrl+H           Toggle Hex Mode   
             21  Ctrl+\           trim leading spaces works on selected lines or entire text
             22  Ctrl+N           Open an additional editor window
             23  Ctrl+K           Spell Check 
             24  Ctrl+shift+F     Find in files
             25  Ctrl+F7          Insert datetime at cursor
             26  F5               Capitalize the first letter of each word
             27  Alt+\            Counts all the words in the entire program       
             28  Ctrl+Q           Quick File Open      
             29  Ctrl+O           Open a File
             30  Ctrl Shift F4    Close all Files Open
             31  Alt+F12          Save All Open Files       
             32  Ctrl+Shift+P     Command Pallete (had to do it twice)
             33  F1               Help       
             34  F9               Run Dos Command
             35  F10              Run Windows Program
             36  CTRL+F11         Trim Leading Spaces
             37  Ctrl+p           Print
             38  Ctrl+M           Play Macro 
             29  Alt+F11          Compare files
     
         b. Javascript and User tools
                                                     
              1  Ctrl+Alt+J       Run SAS program using Jenner Analytics
              1  Ctrl+Alt+X       Execute Selected text using Jenner CLI
              2  Ctrl+Alt+L       Clear log and list (may have a line of residual text?)
       
           c. Macros 
               
              1  Ctrl+Alt+M       Reduce mutiple blanks to single blank udes perl expressions. 
                                  Works on mutiple lines with shiftAlt +column mode
       
           d. Templates           
                                  edit > insert template > modify template > Sas 9 Modified
              1  box_             Ctrl + SPACE turn auto complete on. After you type box_ a blue box
                                   
                                  /*==========================================================================*/
                                  /*                                                                          */
                                  /*==========================================================================*/   
                                  
           e. Miscellaneous
             
              1.  Autosave all open files every minute
                   Advanced > Settings > File Handling > Save
                   Automatic Save Time: 1 (chage 0 to one)
         
              2.  Assign four spaces to the tab key
              
                  Advanced → Settings → Editor → Word Wrap/Tab Settings
                  Select extension for settings or default: Select sas from the pull down menu
                  
                  Use spaces in place of tabs; Check this
                  
                  Tab Stop value: 4
                  Indent spaces: 4
                  
               3.  Right, Left or Center Text    
              
                    Advanced > Settings                       
                     
                    Find: Key Mapping
                    Commands: CenterJustify
                    Press New Multi Key: Ctrl+Alt+C
                    Assign
                    
                    Find: Key Mapping
                    Commands: LeftJustify
                    Press New Multi Key: Ctrl+Alt+L
                    Assign               
                                   
                    Find: Key Mapping
                    Commands: RightJustify 
                    s New Multi Key: Ctrl+Alt+C
                     Assign               
                   
                    You need column mode to define the width of the line
                    Remember the last line in the UE displays
                                               
                    For Help, press F1                                    ln1,col80,C0 DOS utf-8 INS COL
                                                                                                     ===
                    If COL has a blue border column mode is on, without the blue border it is off
                    Toggle COL on.
               
                    View > Ruler         
                                                                                          
                    0........10.......20...                          .......80
                              
                    Highlight the block from start to col 80  and enter ctrl+Alt+C.
                    You should see ln1,col80 at the very botom of UE display.
                          
                    This is the first Line
                        DMS Link UE
                    Roger                   
                                       This is the first Line                             
                                                 DMS Link UE                                  
                                                    Roger                                           
               
               4.  Left Align a Block Of Lines   
                     
                         You need column mode on (don't forget to turn of after alignment)
                             
                         Advanced > Settings   
                                                                               
                         Find: Key Mapping
                         Commands: LeftAlign
                         Press New Multi Key: Ctrl+Alt+,  (The < is above the comma)
                         Assign      
                                 
                         HighlLight this block of text and Ctrl+Alt+,         
                           This is the first Line 
                                      DMS Link UE      
                                        Roger                        
                                          
                           This i sthe result
                                          
                           This is the first Line                
                           DMS Link UE            
                           Roger                  
               
                           TURN COLUMN MODE OFF
                           
               5.  Comment a Block of SAS Code 
                     
                           Find: Key Mapping
                           Commands: LeftAlign
                           Press New Multi Key: Ctrl+Alt+8  (The asterisk is above)
                           Assign      
                                   
                           Hifhlight 
                                           
                           proc print data=sashelp.zipcode(obs=3);
                           Run;   
                     
                           Ctrl+Alt+8 
                     
                           /*  
                           proc print data=sashelp.zipcode(obs=3);
                           Run;   
                              */
            /*--- END ---*/   
   
