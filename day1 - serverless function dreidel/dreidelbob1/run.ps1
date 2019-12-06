
param ($Request)
$Dreidel = ("נ Nun","ג Gimmel","ה Hay","ש Shin")
$Body = $Dreidel | Get-Random

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    Body = $Body
})
 