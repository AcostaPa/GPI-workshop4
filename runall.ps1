Write-Output "Iniciando automatización proyecto Anolis"

#se busca el directorio donde se tiene guardado R
$Rscriptpath = "C:\Program Files\R\R-4.4.0\bin\Rscript.exe"

& $Rscriptpath ./src/limpiar_datos.R
& $Rscriptpath ./scripts/analisis_datos.R
& $Rscriptpath ./scripts/contar_avistamientos.R
& $Rscriptpath ./scripts/contar_datos_menores.R

Write-Output "Proceso completado"