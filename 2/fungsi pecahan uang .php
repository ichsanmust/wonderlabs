<?php 
	$uang = 145000 ; // Input : in ubah saja tergantung uang yang akan di pecahkan
			
	$pembulatanUang = (ceil($uang / 100)) * 100;
	$dataPecahanUang = array(
		100000,
		50000,
		20000,
		10000,
		5000,
		2000,
		1000,
		500,
		200,
		100,
	);
	$dataJumlahUangPecahan = array();
	$jumlahPecahanUang  = count($dataPecahanUang);

	$i = 0;
	foreach ($dataPecahanUang as $listUang){
		$i ++ ;
		if ($pembulatanUang >= $listUang){
			$jumlahPecahan = floor($pembulatanUang / $listUang); 
			$pembulatanUang = $pembulatanUang - ($listUang * $jumlahPecahan) ;
			$dataJumlahUangPecahan[$listUang] = $jumlahPecahan;
		}
	}

	echo 'Input :' .$uang .'<br>';
	echo 'Output :' .json_encode($dataJumlahUangPecahan);
?>