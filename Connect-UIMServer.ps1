function Connect-UIMServer{
    $cred = Get-Credential

    $Password = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR((($cred.Password))))

    $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $cred.UserName,$Password)))

    $Header = @{Authorization=("Basic {0}" -f $base64AuthInfo)}

    return $Header
}