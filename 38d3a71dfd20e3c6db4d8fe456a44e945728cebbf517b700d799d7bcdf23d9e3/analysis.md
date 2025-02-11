**SHA256**: 38d3a71dfd20e3c6db4d8fe456a44e945728cebbf517b700d799d7bcdf23d9e3  
**FileType**: DOC (Microsoft Word)  
**Sample**: https://bazaar.abuse.ch/sample/38d3a71dfd20e3c6db4d8fe456a44e945728cebbf517b700d799d7bcdf23d9e3/  

## Analysis  
- Extracted the file from the `38d3a71dfd20e3c6db4d8fe456a44e945728cebbf517b700d799d7bcdf23d9e3.zip`  
- Renamed `38d3a71dfd20e3c6db4d8fe456a44e945728cebbf517b700d799d7bcdf23d9e3.doc` to `sample.doc`  
- Unzipped the `sample.doc` to `sample_unzipped` directory  
    - Command: `unzip sample.doc -d sample_unzipped`  
    - Extracted the raw xml files that make the XLSM file  
- Viewing the `[Content_Types].xml` shows the following items of interest
  - Macro Enabled `/word/document.xml`
  - Custom Settings `/docProps/custom.xml`
  - App Properties `/docProps/app.xml` - Contains large data
  - Core Properties `/docProps/core.xml` - Contains large data
  - VBA Project `/word/vbaData.xml` & `/word/PtxvycNlrR.bin`

```XML
<!-- [Content_Types].xml -->
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
    <Default Extension="bin" ContentType="application/vnd.ms-office.vbaProject" />
    <Default Extension="png" ContentType="image/png" />
    <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml" />
    <Default Extension="xml" ContentType="application/xml" />
    <Override PartName="/word/document.xml" ContentType="application/vnd.ms-word.document.macroEnabled.main+xml" />
    <Override PartName="/word/vbaData.xml" ContentType="application/vnd.ms-word.vbaData+xml" />
    <Override PartName="/word/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml" />
    <Override PartName="/word/stylesWithEffects.xml" ContentType="application/vnd.ms-word.stylesWithEffects+xml" />
    <Override PartName="/word/settings.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml" />
    <Override PartName="/word/webSettings.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml" />
    <Override PartName="/word/fontTable.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml" />
    <Override PartName="/word/theme/theme1.xml" ContentType="application/vnd.openxmlformats-officedocument.theme+xml" />
    <Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml" />
    <Override PartName="/docProps/app.xml" ContentType="application/vnd.openxmlformats-officedocument.extended-properties+xml" />
    <Override PartName="/docProps/custom.xml" ContentType="application/vnd.openxmlformats-officedocument.custom-properties+xml" />
</Types>
```
- Viewing `/word/document.xml` shows the schema there is only one image (`/word/media/image1.png`) on the page
- Viewing `/docProps/custom.xml` show the following:
  - reversed strings
  - URL(IP)
  - Reference to Document Properties

```XML
<!-- /docProps/custom.xml - See custom_xml_cleaned.xml for decoded xml -->
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/custom-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes">
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="2" name="e310GnZ">
        <vt:lpwstr>seitreporPtnemucoDnItliuB</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="3" name="rJDVgp4hU">
        <vt:lpwstr>seitreporPtnemucoDmotsuC</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="4" name="yN6l6JM4Ce">
        <vt:lpwstr>&amp;</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="5" name="hqGvr8fRS">
        <vt:lpwstr>H</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="6" name="bHb7JqDQ">
        <vt:lpwstr>ynapmoC</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="7" name="McbrMRbNz2J">
        <vt:lpwstr>yrogetaC</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="8" name="eQdqhMhX">
        <vt:lpwstr>lld.23lenrek</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="9" name="oxKnHNei6l0o">
        <vt:lpwstr>tcetorPlautriV</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="10" name="kiTqxBIua">
        <vt:lpwstr>}A97366DD3EE0-77E9-EBF4-7DD4-A2832FCF{</vt:lpwstr>
    </property>
    <property fmtid="{D5CDD505-2E9C-101B-9397-08002B2CF9AE}" pid="11" name="r0KL4ODQPR">
        <vt:lpwstr>~~wmIfA3xT5l2PZqwOry44ri5T5Zh4Jbap4w=~~wOvNUCXG4msT5LYC6Z5bnj8MibAe_z4l51?php.hqqik7Bkf6/hqqik7Bkf6/121.45.98.54//:ptth</vt:lpwstr>
    </property>
</Properties>
```
- Viewing `/docProps/core.xml` shows large amount of data in the `Company` property
- Viewing `/docProps/app.xml` shows large amount of data in the `Category` property
- Viewing `/word/vbaData.xml` show the macro is to run upon document open
```XML
<!-- /word/vbaData.xml -->
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<wne:vbaSuppData xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 wp14">
    <wne:docEvents>
        <wne:eventDocOpen />
    </wne:docEvents>
</wne:vbaSuppData>
```
- `/word/PtxvycNlrR.bin` is a binary file running `strings` on does not return any strings of interest - using `olevba` for extracting the macro

### Analysis using Oletools
#### Oleid
Running oleid on the sample.doc to confirm document details (Macro enabled word document, contains VBA vba macros, not encrypted).  
Command: `oleid sample.doc`
```
oleid sample.doc 
XLMMacroDeobfuscator: pywin32 is not installed (only is required if you want to use MS Excel)
oleid 0.60.1 - http://decalage.info/oletools
THIS IS WORK IN PROGRESS - Check updates regularly!
Please report any issue at https://github.com/decalage2/oletools/issues

Filename: sample.doc
WARNING  For now, VBA stomping cannot be detected for files in memory
--------------------+--------------------+----------+--------------------------
Indicator           |Value               |Risk      |Description               
--------------------+--------------------+----------+--------------------------
File format         |MS Word 2007+ Macro-|info      |                          
                    |Enabled Document    |          |                          
                    |(.docm)             |          |                          
--------------------+--------------------+----------+--------------------------
Container format    |OpenXML             |info      |Container type            
--------------------+--------------------+----------+--------------------------
Encrypted           |False               |none      |The file is not encrypted 
--------------------+--------------------+----------+--------------------------
VBA Macros          |Yes, suspicious     |HIGH      |This file contains VBA    
                    |                    |          |macros. Suspicious        
                    |                    |          |keywords were found. Use  
                    |                    |          |olevba and mraptor for    
                    |                    |          |more info.                
--------------------+--------------------+----------+--------------------------
XLM Macros          |No                  |none      |This file does not contain
                    |                    |          |Excel 4/XLM macros.       
--------------------+--------------------+----------+--------------------------
External            |0                   |none      |External relationships    
Relationships       |                    |          |such as remote templates, 
                    |                    |          |remote OLE objects, etc   
--------------------+--------------------+----------+--------------------------
```
#### Olevba
Using Olevba to dump the vba macro to a file for further analysis  
Command: `olevba --code sample.doc > sample_doc_vba.vba`
- The code is obfuscated almost all function names & variables are renamed using a combination of space & periods.
```VBA
Private Declare PtrSafe Function  ·         ·  ·   · Lib "kernel32" Alias "GetProcAddress" (ByVal   ·      · ·· ·   As LongPtr, ByVal  ··  ·· ··  As String) As LongPtr
Private Declare PtrSafe Function ····  ··    ·   Lib "user32" Alias "CallWindowProcA" (ByVal  · ·  ·  ··  ·  · · As LongPtr, ByVal  · ····  · ·  As LongPtr, ByVal     · ·     ·  · As LongPtr, ByVal · · ····   As LongPtr, ByVal      ···     ··· As LongPtr) As LongPtr
Private Declare PtrSafe Function ··· ··         Lib "kernel32" Alias "LoadLibraryA" (ByVal · · ·  · ·   ···· As String) As LongPtr
Private Declare PtrSafe Function    · ·   · Lib "kernel32" Alias "SetEnvironmentVariableA" (ByVal   ··· ·  ·  As String, ByVal ···· ·       · As String) As LongPtr
...[SNIP]...
```

## Yara Rule
```YAML
rule rule_name {}
```

<!-- EOF -->
