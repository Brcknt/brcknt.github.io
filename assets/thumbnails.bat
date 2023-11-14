rd thumbnails-400 /s
rd thumbnails-200 /s
Xcopy C:\Users\brcknt\brcknt.github.io\assets\images C:\Users\brcknt\brcknt.github.io\assets\thumbnails-400 /E /H /C /I
cd thumbnails-400
magick mogrify -resize x400 *.png
magick mogrify -resize x400 *.jpg
cd ..
Xcopy C:\Users\brcknt\brcknt.github.io\assets\images C:\Users\brcknt\brcknt.github.io\assets\thumbnails-200 /E /H /C /I
cd thumbnails-200
magick mogrify -resize x200 *.png
magick mogrify -resize x200 *.jpg