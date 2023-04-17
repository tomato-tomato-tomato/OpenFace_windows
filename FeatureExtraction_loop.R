for /F %i in ('dir /b "C:/Users/manvis/Desktop/batch1"') do (
  FeatureExtraction.exe -inroot "C:/Users/manvis/Desktop/batch1" -f %i -3Dfp -pose -aus -gaze -out_dir "C:/Users/manvis/Desktop/failed_processed"
  if %errorlevel%==0 (
    echo %i processed successfully. >> "C:/Users/manvis/Desktop/batch1_processed/success.txt"
  ) else (
    echo %i processing batch1. >> "C:/Users/manvis/Desktop/batch1_processed/error.txt"
  )
)

#This updated command uses the >> operator to append the success or error message for each file to a separate text file. The success messages will be stored in a file called success.txt, while the error messages will be stored in a file called error.txt, both located in the C:/Users/manvis/Desktop/batch1_processed directory.



