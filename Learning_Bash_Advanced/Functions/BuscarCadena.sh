#!/bin/bash
function buscarCadena ([String]$cadena , [String]$file) {
#Se verifica que los parematros no esten vacios.
if (( Test-Path -Path $file) -and $cadena){
	$list = Get-Content $file
		#Si encuentra la cadena devuelve true
		if ($list -match -$cadena){
			return $true
			}
		}
}


