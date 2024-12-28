param (
	[string]$path
)

if ($path) {
	$file = Get-Item $path

	switch ($file.Extension) {
		{$_ -in ".svg", ".pdf"} {
			Start-Process -FilePath "c:\Program Files\Inkscape\bin\inkscape.exe" -ArgumentList "`"$path`""
		}
		{$_ -in ".tar", ".gz",  ".xz", ".zip"} {
			Start-Process -FilePath "C:\Program Files\7-Zip\7zFM.exe" -ArgumentList "`"$path`""
		}
		{$_ -in ".png", ".jpg"} {
			Start-Process -FilePath "C:\Program Files\GIMP 2\bin\gimp-2.10.exe" -ArgumentList "`"$path`""
		}
	}
}