# LaunchMyRoutine

Single-click workflow starter for Artists, Developers, and Technical roles. Automate your daily software and documentation launch.
Stop searching ways to stay focussed, Decide in a splitsecond, save all your work and close all windows, decide your workflow in seperate batch files, easily jump right into the work and start creating!

::Creative Workflow Starter Batch File (LaunchMyRoutine.bat)::
Simple customizable Windows Batch script to automate the launch of your daily tools and resources as an **Artist** or **Technical Artist** or **Developer** in the Gaming/Visual Effects Industry.

**Disclaimer: Preferably to only use at the start of your day haha and also do NOT put to many things in one batch, trust me, it will do exactly what you task it to do haha.**
**Additional Disclaimer: if you really want all your software to come up but in a certain order you can timeout certain softwares. You can even do that purposefully when in time constraint for deadlines.**

---
**::Instructions::**

Save the (artist/technical artist/developer) workflow setup .bat file to an easily accessible location (like your Desktop).
Update the placeholder paths (set BLA_BLA_PATH=...) with the actual, full paths to your applications, scripts, and network locations.
Use timeouts to reserve some restrain on your computing power, or use for deadlines. 
Add, delete, or adjust the start commands to fill with your personal websites, applications, and project folders.
How to run a batch file? Simply double-click or click and Enter.

**Option A** is to open a new .txt file and copy paste the text of the .bat from this repository and adjust accordingly (**HIGHLY RECOMMENDED**)
and 
**Option B** is to download this batch file but I would NOT recommend since it is tailored to things you probably won't have on your computer. (**DON'T CHOOSE OPTION B**)

---
**::Explaning what a Batch File Can Open::**

The start command in a Windows batch file will automatically open the target, so it will open the default associated Application OR Project file OR Folder OR your default browser for all the URLs.
(The last one might be very useful if you are working on online course material so that you can make sure you finish it through to the end haha)

---
**::APPLICATIONS::**

COMMAND EXAMPLE: start "" %MAYA_PATH%
FILE EXTENSIONS: .exe, .com, .bat, .cmd
NOTE: Use this for all DCC tools (Maya, 3ds Max, Zbrush, Substance Painter, Substance Designer, Marmoset Toolbag, or even Houdini if you are that Wiz-Kid) and also for Game Engines (Unreal Engine, Unity), and IDEs (Visual Studio Code or other preferred Code Editors).

---
**::WEBSITES::**

COMMAND EXAMPLE: start chrome "https://..."
FILE EXTENSIONS: Any valid URL starting with http:// or https://
NOTE: This will launch your specified browser (Chrome, Firefox, or MS Edge) right to the URL. If you leave the browser name out (just use start "https://..."), it'll open in your system's default web browser. Great for Jira, Trello, ArtStation, or documentation wikis!

---
**::3D & TEXTURE FILES::**

COMMAND EXAMPLE: start "" "D:\Assets\scene.mb"
FILE EXTENSIONS: .mb, .ma, .blend, .sbs, .sbsar, .substance, .ztl
NOTE: When you use the start command on a file, it checks your PC's file associations and opens the program automatically! A Substance file will open Designer, a .mb file opens Maya, and so on.

---
**::SCRIPTS::**

COMMAND EXAMPLE: start "" %PYTHON_SCRIPT_PATH%
FILE EXTENSIONS: .py, .js, .ps1 (PowerShell), .lua
NOTE: This is how you run little helper scripts! If Windows knows what program to use (like Python or Node), it will run the script right away. Perfect for time trackers, auto-cleanup scripts, or custom command-line utilities.

---
**::PROJECT FOLDERS::**

COMMAND EXAMPLE: start "" "D:\Projects\MyGame"
FILE EXTENSIONS: Local directories, Network Shares (\\NAS_Server\Share)
NOTE: This command is super simple: it just opens the specified folder location in File Explorer. You can use it for local project directories or even map directly to a network-attached storage (NAS) share to open your asset library.

---
**::DOCUMENTS::**

COMMAND EXAMPLE: start "" "C:\Report.xlsx"
FILE EXTENSIONS: .pdf, .docx, .xlsx, .md, .txt, .json
NOTE: Opens the file using whatever program is set as the default on your system (e.g., PDFs open in Acrobat, .xlsx files open in Excel).

---
**::REFERENCE::**

COMMAND EXAMPLE: start "" "C:\RefBoard.pur"
FILE EXTENSIONS: .pur (PureRef), .jpg, .png, .tiff, .gif
NOTE: This covers all your visual needs! Great for quickly launching a PureRef board, or opening a specific texture or reference image in your default image viewer.

---
**::Troubleshooting Tips (Avoid Mistakes!)::**

**Paths with Spaces:** 
Always enclose paths in double quotes, even for the variables
set MY_APP="C:\Program Files\My App\App.exe". Don't skip those quotes!

**The Double Quote Trick:**
When launching an executable via a variable (like %UNREAL_ENGINE_PATH%), you must use the empty title placeholder: start "" %VARIABLE%. 

**Hardcoded Path:**
When using a hardcoded path, include the path in the second set of quotes: start "" "C:\Path\To\File.exe".

**System Variables:**
You can use variables like %USERNAME% (your Windows user folder) and %HOMEPATH% (your main profile folder) to make paths more portable so you don't have to change them when you move machines! (ofcourse if you know that the machine supports the files and extensions AND if the applications are installed at all to say the least).

**Managing Heavy Load (Timeout):** If your script opens many large applications (like Unreal, Maya, Photoshop) at once and your computer slows down, you can add breathing room with the timeout command. This pauses the script for a specified number of seconds before launching the next application. Use timeout /t [NUMBER_OF_SECONDS] between heavy start commands.

(timeout /t 3600 = 1 hour, timeout /t 86400 = 24 hours)
