# Get Office 365
The simplest way to get Office 365 running on your Windows (10/11) computer.

### Installation

---

  - If Office was ever installed before,
    - Uninstall Office with the App and Features option (a.k.a. Add or Remove Programs) in Windows settings.
    - Run OfficeScrubber.cmd file from [Office Scrubber](https://github.com/abbodi1406/WHD/raw/master/scripts/OfficeScrubber_13.zip) by abbodi1406 and select [R] Remove all Licenses option.

  - Restart your computer if you have completed the steps above.

  - Open Powershell, copy-paste the code below, and press Enter:
```
irm https://naeembolchhi.github.io/Get-Office-365/GO365.ps1 | iex
```

  - This will now download and install Office 365 (Word, Excel, PowerPoint) on your computer automatically.

### Activation

---

  - You can activate this Office installation with Massgrave's popular script.

  - Open Powershell, copy-paste the code below, and press Enter:
```
irm https://get.activated.win | iex
```

  - Type `2` to select Ohook Activation, then type `1` to start permanent Office activation.

  - Enjoy!

### Alternative Method

---

  - If this process did not work for you, you can also try following my guide for an alternative method of Office 365 installation using Office Tool Plus.
    - https://medium.com/@NaeemBolchhi/ebe7d6052434

<br>

###   Credits

---

| **Dev** | **Contribution** |
|---|---|
| @massgravel | For their amazing guide on this process. |
| | https://gravesoft.dev/office_c2r_custom |
| @NaeemBolchhi \(Me\) | Offered a preconfigured Configuration.xml file and an easy-to-use one-liner for convenience. |
