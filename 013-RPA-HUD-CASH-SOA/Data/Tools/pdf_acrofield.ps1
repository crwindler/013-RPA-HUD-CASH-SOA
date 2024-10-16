
[System.Reflection.Assembly]::LoadFrom($DllPath) | Out-Null 
$PDFDoc = New-Object iTextSharp.text.pdf.PdfReader -ArgumentList "D:\Users\vijaya.upadhyayula\Documents\UiPath\RPA_Rescind_Packet_Builds\Data\Input\Rescind_Template.pdf",
$PDFDoc_ = New-Object iTextSharp.text.pdf.PdfStamper($PDFDoc,[System.IO.File]::Create("D:\Users\vijaya.upadhyayula\Documents\UiPath\RPA_Rescind_Packet_Builds\Data\Output\Rescind_cover.pdf"))



$PDFDoc_.AcroFields.SetField("Today","Feb 10,2022") | Out-Null
$PDFDoc_.AcroFields.SetField("Borrower",$test) | Out-Null
$PDFDoc_.AcroFields.SetField("Property Address","Test address") | Out-Null
$PDFDoc_.AcroFields.SetField("FHA Case No","456343") | Out-Null

$PDFDoc_.AcroFields.SetField("Investor No","243321") | Out-Null
$PDFDoc_.AcroFields.SetField("Loan Number","1143432423") | Out-Null
$PDFDoc_.AcroFields.SetField("The loan referenced above was called Due  Payable on","11/02/2022") | Out-Null
$PDFDoc_.AcroFields.SetField("Text1","Vijay") | Out-Null
$PDFDoc_.FormFlattening=1
$PDFDoc_.Close();
