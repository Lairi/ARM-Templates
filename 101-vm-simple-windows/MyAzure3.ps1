param([string]$rgName)
Login-AzureRmAccount
$rgName1 = "MyDeploymentRG06"
$LocName = “West Europe”
$templateURI = "https://raw.githubusercontent.com/Lairi/ARM-Templates/master/101-vm-simple-windows/azuredeploy.json"
New-AzureRmResourceGroup -Name $rgName -Location westeurope
$parameters = @{"newStorageAccountName"="MyDeployStorageACC";"location"="West Europe”;”adminUsername”=”Charbel”;”dnsLabelPrefix”=”chmydepl2"}
New-AzureRmResourceGroupDeployment -Name ExampleDeployment11 -ResourceGroupName $rgName -TemplateUri $templateURI -TemplateParameterObject $parameters