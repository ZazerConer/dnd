<?php

$url = "http://62.28.71.186:45678/http/192.168.150.137:7137/eleven6";

$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$headers = array(
   "Referer: https://elevensports.com",
   "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
//for debug only!
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);

$resp = curl_exec($curl);
curl_close($curl);
preg_match('/qualities":({.+?}),"/', $resp, $matches);
$arr = json_decode($matches[1], true);
    $m3u8_raw = $arr['auto'][0]['url'];
header("Location: ".$m3u8_raw);
?>