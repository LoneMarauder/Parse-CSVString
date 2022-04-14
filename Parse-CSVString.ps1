# Pass the string and length as parameters
Param(
    [Parameter(Mandatory = $true)]
    [String]$String,
    [Int16]$Chars
)

# DEBUG Items here, uncomment the "Param" block above to use these
# $String = 'relation,charity,argument,passenger,difference,technology,income,decision,music,topic,poetry,sector,situation,ad,midnight,extent,union,painting,response,organization,security,highway,appearance,employer,departure,transportation,penalty,library,error,emotion'
# $Chars = 200

# Split the comma-separated string into an array
$stringArray = $String.Split(",")

# Construct the new, shorter array(s) from the longer one

# First, make sure the variables are reset

$stringItemCounter = $stringArray.Length
# $arrayCounter = 0
$arrayItem = 0
$newArray = ''

# Loop - generates item strings and outputs them to the console
foreach ($string in $stringArray){
    # Check to see if we need to increment the master string array by seeing if the next string would put us over the limit
    if ($newArray.Length + $string.Length -ge $Chars){
        $newArray = $newArray.Substring(0,$newArray.Length-1)
        Write-Host $newArray
        $newArray = ''
    }
    if ($arrayitem -lt ($stringItemCounter-1)){
    $newArray = $newArray + $string + ","
    $arrayItem++
    } else {
        $newArray = $newArray + $string
    }
}

# Finally, dump the final value of the $newArray variable.  This will be the last line so it is almost certainly less than the full character limit.
# There will probably be a bug if the last "split up" line just so happens to be the exact length of the $Chars variable.
# It can be fixed in version 2.  Maybe.
