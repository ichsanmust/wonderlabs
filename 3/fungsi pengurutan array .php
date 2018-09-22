<?php 
function pengurutanData($data){
  $arrayTemp= array();
  $n=count($data);
  $nomorke = 0;
  for ($i = 0;$i<$n;$i++){
    $k = $i;
    for ($j = $i+1;$j<$n;$j++){
      if ($data[$j] < $data[$k]){
		$k = $j;
	  }
	  
    }   
    $dummy=$data[$i];
    $data[$i]=$data[$k];
    $data[$k]=$dummy;
	
	if ($arrayTemp !== $data){
		$nomorke ++;
		$arrayTemp = $data ;
		echo 'Proses Swap Ke '.$nomorke.': '. json_encode($data).'<br>';
	}
  }
  
  return $nomorke;
  
}

$data=array(14, 8, 3, 22, 9); // ini ubah urutan dan isinya bebas
echo 'Input : '. json_encode($data).'<br>';
echo 'Output : '.$output = pengurutanData($data);
?>