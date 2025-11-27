@echo off
REM Prepare Portfolio for Firebase Deployment (Windows)
REM This script organizes all files into the index folder for deployment

echo 🚀 Preparing portfolio for Firebase deployment...

REM Navigate to the script directory
cd /d "%~dp0"

REM Backup the old index folder
if exist "index_backup" (
    echo 📦 Removing old backup...
    rmdir /s /q index_backup
)

echo 📦 Creating backup of existing index folder...
if exist "index" move index index_backup

REM Create new index folder
echo 📁 Creating new index folder...
mkdir index

REM Copy all HTML files to index
echo 📄 Copying HTML files...
copy *.html index\ >nul 2>&1

REM Copy assets folder
if exist "assets" (
    echo 🎨 Copying assets folder...
    xcopy /E /I /Y assets index\assets >nul
)

REM Copy all resource folders
echo 📂 Copying resource folders...
if exist "about_files" (
    echo   - Copying about_files...
    xcopy /E /I /Y about_files index\about_files >nul
)
if exist "contact_files" (
    echo   - Copying contact_files...
    xcopy /E /I /Y contact_files index\contact_files >nul
)
if exist "portfolio_files" (
    echo   - Copying portfolio_files...
    xcopy /E /I /Y portfolio_files index\portfolio_files >nul
)
if exist "project_files" (
    echo   - Copying project_files...
    xcopy /E /I /Y project_files index\project_files >nul
)
if exist "project-single_files" (
    echo   - Copying project-single_files...
    xcopy /E /I /Y project-single_files index\project-single_files >nul
)

REM Copy images from old index folder
echo 🖼️  Copying images from backup...
if exist "index_backup" (
    mkdir index\index
    copy index_backup\*.jpg index\index\ >nul 2>&1
)

echo ✅ Preparation complete!
echo.
echo 📋 Next steps:
echo 1. Run: firebase login
echo 2. Run: firebase deploy
echo 3. Your portfolio will be live!
echo.
echo 💡 To test locally first, run: firebase serve

pause
