<?php
$arch2=fopen('../Resources/Archivos/filo.txt','r');
$strfilo=fread($arch2,filesize("../Resources/Archivos/filo.txt"));
$arrafilo=explode(",",$strfilo);
$arch3=fopen('../Resources/Archivos/clase.txt','r');
$strclase=fread($arch3,filesize("../Resources/Archivos/clase.txt"));
$arraclase=explode(",",$strclase);
$arch4=fopen('../Resources/Archivos/orden.txt','r');
$strorden=fread($arch4,filesize("../Resources/Archivos/orden.txt"));
$arraorden=explode(",",$strorden);
$arch5=fopen('../Resources/Archivos/familia.txt','r');
$strfamilia=fread($arch5,filesize("../Resources/Archivos/familia.txt"));
$arrafamilia=explode(",",$strfamilia);
$arch6=fopen('../Resources/Archivos/genero.txt','r');
$strgenero=fread($arch6,filesize("../Resources/Archivos/genero.txt"));
$arragenero=explode(",",$strgenero);
$arch=fopen('../Resources/Archivos/spe.txt','r');
$strspe=fread($arch,filesize("../Resources/Archivos/spe.txt"));
$arraspe=explode(",",$strspe);
$arch1=fopen('../Resources/Archivos/subspe.txt','r');
$strsubspe=fread($arch1,filesize("../Resources/Archivos/subspe.txt"));
$arrasubspe=explode(",",$strsubspe);

echo "<!DOCTYPE html>
			<html lang='es'>
				<head>
					<meta charset='utf-8'/>
					<title>Portada</title>
					<link rel='stylesheet' type='text/css' href='../Styles/portada.css'/>
				</head>
				<body>";
echo				"<h1 class='stroke'>Animales de America del Norte</h1>
					<form>
						<div class='fon'><caption>ESCOGE LAS CATEGORIAS</caption>";			
echo 					"<center><table border='2' style='background-color:black;'>
							<tr>
								<th>Phylum</th>
								<th>Class</th>
								<th>Order</th>
								<th>Family</th>
								<th>Genus</th>
								<th>Species</th>
								<th>Subspecies</th>
							</tr>
							<tr>";
echo							"<td><select name=filo>";
									for($i=0;$i<6;$i++)
echo									"<option value=".$arrafilo[$i].">".$arrafilo[$i]."</option>";
									fclose($arch2);
echo							"</select></td>
								<td><select name=clase>";
									for($i=0;$i<14;$i++)
echo									"<option value=".$arraclase[$i].">".$arraclase[$i]."</option>";
									fclose($arch3);	
echo							"</select></td>
								<td><select name=orden>";
									for($i=0;$i<55;$i++)
echo									"<option value=".$arraorden[$i].">".$arraorden[$i]."</option>";
									fclose($arch4);
echo							"</select></td>
								<td><select name=familia>";
									for($i=0;$i<140;$i++)
echo									"<option value=".$arrafamilia[$i].">".$arrafamilia[$i]."</option>";
									fclose($arch5);
echo							"</select></td>
								<td><select name=genero>";
									for($i=0;$i<456;$i++)
echo									"<option value=".$arragenero[$i].">".$arragenero[$i]."</option>";
									fclose($arch6);
echo							"</select></td>
								<td><select name=specie>";
								for($i=0;$i<1323;$i++)
echo									"<option value=".$arraspe[$i].">".$arraspe[$i]."</option>";
									fclose($arch);
echo							"</select></td>
								<td><select name=subspecie>";
									for($i=0;$i<16;$i++)
echo									"<option value=".$arrasubspe[$i].">".$arrasubspe[$i]."</option>";
									fclose($arch1);
echo							"</select></td>
							</tr>
							<tr>
								<td colspan='7'><center><input type='submit' value='Buscar'></center></td>
							</tr>
						</table></center></br></div>
					</form>
					</p><h2 class='stroke'>By: Team noobs</h2>
				</body>
			</html>";
?>