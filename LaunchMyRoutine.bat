@echo off
title Creative Workflow Starter
echo Starting Your Daily Creative Workflow... (Concept Artist, 3D Artist, Technical Artist, Developers)
echo ------------------------------------------

:: --- CONFIGURATION: CUSTOMIZE YOUR PATHS HERE ---
:: Replace these "EXAMPLE" paths with your actual locations on your computer OR Network.

set PYTHON_SCRIPT_PATH="C:\Scripts\TimeTracker\run_tracker.py"
set UNREAL_ENGINE_PATH="C:\Program Files\Epic Games\UE_5.6\Engine\Binaries\Win64\UnrealEditor.exe"
set MAYA_PATH="C:\Program Files\Autodesk\Maya2026\bin\maya.exe"
set PHOTOSHOP_PATH="C:\Program Files\Adobe\Photoshop\photoshop.exe"
set CHIME_PATH="C:\Users\wickedmotion\Desktop\Chime-App\index.html"

:: Dedicated Code Editor for Developers/Technical Artists (TAs) when applicable
set VSC_PATH="C:\Program Files\Microsoft VS Code\Code.exe"

:: For Steam Apps
set DESIGNER_PATH="C:\Program Files (x86)\Steam\steamapps\common\Substance 3D Designer 2025\Adobe Substance 3D Designer.exe"

:: Substance Painter for 3D/Texture Artists
set SUBSTANCE_PAINTER_PATH="C:\Program Files\Adobe\Substance 3D Painter\Painter.exe"

:: For Folder Locations "EXAMPLE"
set PROJECT_FOLDER_1="D:\Projects\GameJam\Content"
:: UNC network paths MUST start with a double backslash (\)
set NAS_SHARE="\\YourNAS\Design_AssetLibrary"

:: --------------------------------------------------
:: --- OPENING WEBSITES: PASTE YOUR URLS HERE ---
:: These will open in your default browser (or specify 'chrome' / 'firefox').

echo.
echo Launching Essential Web Resources...
echo ------------------------------------------

:: Project Management & Team Resources
start chrome "https://www.atlassian.com/software/jira"
start chrome "https://www.atlassian.com/software/confluence"
start chrome "https://docs.google.com/spreadsheets/u/0/"

echo.

:: Portfolio & Learning
start chrome "https://www.linkedin.com/feed"
start chrome "https://www.artstation.com/learning"
start chrome "https://dev.epicgames.com/documentation/en-us/unreal-engine/unreal-engine-5-6-documentation"
start chrome "https://dev.epicgames.com/community/unreal-engine/snippets"
start chrome "https://github.com/raysan5/custom_game_engines"

:: --------------------------------------------------
:: --- OPENING APPLICATIONS (.exe Files) ---
:: The "" after 'start' is required as a title placeholder when using variables.

echo.
echo Launching Applications...
echo ------------------------------------------

:: 3D Modeling/Animation Tools (Heavy Load: Launch and wait 5 seconds)
start "" %MAYA_PATH%
start "" %PHOTOSHOP_PATH%

timeout /t 5 :: Wait 5 seconds before hitting the Creative Software

echo.

:: Content Creation Reference Tools (Medium Load: Launch these together)
start "" %DESIGNER_PATH%
start "" %SUBSTANCE_PAINTER_PATH%  :: Substance Painter Added
start "" "C:\Program Files\PureRef\PureRef.exe"
:: Added missing backslash after %USERNAME%
start "" "C:\Users\%USERNAME%\AppData\Local\Programs\Obsidian\Obsidian.exe"
start "" %VSC_PATH% :: VS Code Added

timeout /t 120 :: Wait 120 seconds (2 minutes) before hitting the Engine

echo.

:: Game Engine (Very Heavy Load: Launch last to give other apps priority)
start "" %UNREAL_ENGINE_PATH%

:: --------------------------------------------------
:: --- OPENING FILES and PROJECT FOLDERS ---
:: These open in the default associated program (File Explorer, Web Browser, Excel, etc.).

echo.
echo Opening Project Folders and Files...
echo ------------------------------------------

:: Utility Script and App (Runs via Python or default interpreter/browser)
start "" %PYTHON_SCRIPT_PATH%
start "" %CHIME_PATH%

echo.

:: Working Folders (Opens in File Explorer)
start "" %PROJECT_FOLDER_1%
start "" %NAS_SHARE%

echo.

:: Specific Documentation/Report File
start "" "C:\ProjectReports\daily_status_report.xlsx"
start "" "D:\MyProject\Documentation\README.md"

:: --------------------------------------------------

echo.
echo All Core Systems Ready. Get Creating!
pause