$crystal = 12000000                                           ' used crystal frequency
$baud = 9600
Config Servos = 4 , Servo1 = P0.2 , Servo2 = P0.3 , Servo3 = P0.4 , Servo4 = P0.1 , Reload = 100       ', Interval = 100
Servo1 = 7
Servo2 = 5
Servo3 = 12
Servo4 = 15

Waitms 150
'Servo(2) = 5
Sensor Alias P3.1

Enable Interrupts
Dim I As Byte
Dim J As Byte
Do
If Sensor = 0 Then
   Gosub Jepit_buka
   Gosub Atas_naik
   'Waitms 500


    Gosub Bawah_kiri
   'Waitms 500

    Gosub Tengah_turun
   'Waitms 500

   Gosub Jepit_tutup
   'Waitms 500

   Gosub Tengah_naik
   'Waitms 500
    Gosub Atas_turun
   'Waitms 500

   Gosub Bawah_kanan
   'Waitms 500
     Gosub Atas_naik
   'Waitms 500
   Gosub Tengah_turun
   'Waitms 500

   Gosub Jepit_buka
   'Waitms 500
   Gosub Tengah_naik
   'Waitms 500
   Gosub Atas_turun
   'Waitms 500


   Gosub Bawah_kn_tengah
   Gosub Jepit_tutup
'End If

Else
Servo1 = 7
Servo2 = 5
Servo3 = 12
Servo4 = 8
End If


Loop
End


Bawah_kiri:
   'ada benda putar kiri
   'dari tengah ke kiri
   For J = 6 To 3 Step -1
      Servo1 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Bawah_kanan:
   'dari kiri ke kanan
   For J = 4 To 10 Step 1
      Servo1 = J
      Waitms 1000                                             ' some time to check if the servo is stable
      Next
   Waitms 5000
Return

Bawah_kn_tengah:
   'dari kanan ke tengah
   For J = 9 To 7 Step -1
      Servo1 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Tengah_turun:

    'turunkan tengah
   For J = 6 To 10 Step 2
      Servo2 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Tengah_naik:
   'naikkan tengah
   For J = 9 To 5 Step -2
      Servo2 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Atas_turun:
   For J = 11 To 12 Step 3
      Servo3 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Atas_naik:
   For J = 11 To 10 Step -3
      Servo3 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Jepit_buka:
   For J = 14 To 6 Step -4
      Servo4 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return

Jepit_tutup:
   For J = 7 To 15 Step 4
      Servo4 = J
      Waitms 1000                                             ' some time to check if the servo is stable
   Next
   Waitms 5000
Return