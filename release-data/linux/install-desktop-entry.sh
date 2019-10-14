echo "Creating desktop entry for app #release.project#"

file_location=~/.local/share/applications/#release.project#.desktop

echo "[Desktop Entry]" > $file_location
{
  echo "Version=1.0"
  echo "Type=Application"
  echo "Name=#release.project.name#"
  echo "Icon=$(dirname $(readlink -f $0))/icon.png"
  echo "Exec=$(dirname $(readlink -f $0))/#release.project#"
  echo "Comment=#release.comment#"
  echo "Categories=#release.linux.category#"
  echo "Terminal=false"
} >> $file_location

echo "File " $file_location " created"
echo "Installation completed"
