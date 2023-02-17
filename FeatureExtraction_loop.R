#Change directory to where openface is installed, eg: cd C:/Users/manvis/Desktop/openface
#creates a loop to process all videos located at C:/Users/manvis/Desktop/failed and saves to C:/Users/manvis/Desktop/failed_processed
for /F %i in ('dir /b "C:/Users/manvis/Desktop/failed"') do (
  FeatureExtraction.exe -inroot "C:/Users/manvis/Desktop/failed" -f %i -3Dfp -pose -aus -gaze -out_dir "C:/Users/manvis/Desktop/failed_processed"
  if %errorlevel%==0 (
    echo %i processed successfully.
  ) else (
    echo %i processing failed.
  )
)
