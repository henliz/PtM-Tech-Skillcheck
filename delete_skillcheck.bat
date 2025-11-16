@echo off
echo =============================
echo  Removing PtM's skillcheck
echo =============================
echo.

REM --- Remove Git folder if it exists ---
if exist ".git" (
    echo Removing .git
    rmdir /s /q ".git"
)

REM --- Remove skillcheck's files and folders ---
for %%p in (
Data/Editor/Mods/PTM_SkillCheck_7807352a-f8b1-8590-656f-95c373379dad
Data/Generated/Public/PTM_SkillCheck_7807352a-f8b1-8590-656f-95c373379dad
Data/Mods/PTM_SkillCheck_7807352a-f8b1-8590-656f-95c373379dad
Data/Projects/PTM_SkillCheck_7807352a-f8b1-8590-656f-95c373379dad
Data/Public/PTM_SkillCheck_7807352a-f8b1-8590-656f-95c373379dad
[01]Systems
[02]Integration
.gitignore
README.md
) do (
    if exist "%%p" (
        echo Removing %%p
        rmdir /s /q "%%p" 2>nul
        del /f /q "%%p" 2>nul
    ) else (
        echo Skipping %%p (not found)
    )
)

echo.
echo =============================
echo  Deleting complete!
echo =============================
pause
