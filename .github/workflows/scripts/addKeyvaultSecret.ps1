
param ($keyvaultname, $secretname, $secretvalue)
write-host "add secret $secretname with value $secretvalue on $keyvaultname"
$Secret = ConvertTo-SecureString -String $secretvalue -AsPlainText -Force
Set-AzureKeyVaultSecret -VaultName 'Contoso' -Name $secretname -SecretValue $Secret
