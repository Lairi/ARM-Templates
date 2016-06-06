param([string]$rgName,[string]$LocName)
Login-AzureRmAccount
$rgName1 = "MyDeploymentRG06"
$LocName1 = “West Europe”
$templateURI = "https://raw.githubusercontent.com/Lairi/ARM-Templates/master/101-vm-simple-windows/azuredeploy.json"
New-AzureRmResourceGroup -Name $rgName -Location $LocName
$parameters = @{"newStorageAccountName"="MyDeployStorageACC";"location"= $LocName;”adminUsername”=”Charbel”;”dnsLabelPrefix”=”chmydepl2"}
New-AzureRmResourceGroupDeployment -Name ExampleDeployment11 -ResourceGroupName $rgName -TemplateUri $templateURI -TemplateParameterObject $parameters