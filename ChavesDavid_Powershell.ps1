<# 1.- Realizar un programa en Powershell que pida un número e devolva si é primo ou non. 
Utiliza funcións na medida do posible. 
[Opcional] O programa tenos que permitir volver a facer ese cálculo 
unha e outra vez si así o desexamos. #>

Function f.Primo($Numero)
{
    if ($Numero -le 1) {
        return $False
    }

    for ($i = 2; $i -lt $Numero; $i++) {
        if ($Numero % $i -eq 0) {
            return $False
        }
    }

    return $True
}

Do {
    Write-Host "Dime un número: "
    $Comprobar = Read-Host

    if (f.Primo $Comprobar) {
        Write-Host "$Comprobar SI é primo"
    }
    else {
        Write-Host "$Comprobar NON é primo"
    }

    Write-Host "Queres probar de novo? (S/N): "
    $Repetir = Read-Host

} while ($Repetir -eq "S")






<#2.- Escribir un xogo de adiviñanza. 
O programa pedirá ao usuario dous números (o número inferior e o número superior).
O programa obterá, a continuación, un número aleatorio entre eses dous números, e o usuario deberá adiviñalo. 
Cada vez que o usuario introduce un número, o programa lle dice si é maior ou menor. 
Ao final, o programa indica o número de intentos utilizado.#>

$NIntentos= 1
function f.NOculto {
    $NProba= Read-Host "Intenta acertalo! "
    if ($NOculto -eq $NProba)
    {
        Write-Host "Moi ben! Necesitaches $NIntentos intentos"
        $Saida=0
        break
    }
    elseif ($NProba -lt $NOculto)
    {
         Write-Host "O número que buscas é maior"
    }
    else
    {
        Write-Host "O número que buscas é menor"
    }
    $NIntentos++
}

$NSuperior= Read-Host "Dinos o número superior "
$NInferior= Read-Host "Dinos o número inferior "
if ($NSuperior -le $NInferior)
{
    Write-Host "Introduciche valores non válidos"
}
else
{
    $NOculto= Get-Random -Minimum $NInferior -Maximum $NSuperior
    Write-Host "Acabamos de pensar nun número entre eses valores."
    
    $Saida= 1
    while ($Saida -eq 1) {$Saida; f.NOculto}
}

# Este funciona algo raro :/





<#3.- Programa que recolla unha lista de números 
(ata que o usuario escriba un 0) e logo devolva esa lista ordenada.#>

$Lista = @()

Do {
    Write-Host "Dinos un número (0 pra parar): "
    $Numero = Read-Host

    if ($Numero -eq 0) {
        break
    }

    $Lista += [int]$Numero

} while ($true)

$Lista= $Lista | Sort-Object
Write-Host "Aquí tes a tua lista ordenada : $Lista"




<#[Opcional]
4.- Realizar un programa en Powershell que realice a  dun número enteiro. 
(Por exemplo: 120 = 2 * 2 * 2 * 3 * 5)
Despois debe amosalo do seguinte xeito: 120 = 2^3 * 3^1 * 5^1#>