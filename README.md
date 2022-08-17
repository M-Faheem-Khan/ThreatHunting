# ThreatHunting

This repository contains my analysis of various malware samples uploaded to Malware Bazaar. 

## Analyzed Samples
| SHA256 | Analysis | File Type | Yara Rule |
|---|---|---|---|
| [6fff03a5b2e69d3e0fc91be6d24a3dbbd37e490214122fa2a1ea6e80acfa2131](https://github.com/M-Faheem-Khan/ThreatHunting/blob/main/6fff03a5b2e69d3e0fc91be6d24a3dbbd37e490214122fa2a1ea6e80acfa2131/analysis.md) | YES | MS Excel (xlsx) | YES |
| [05aa485c6efbef1c65e5876428d00cbb72b85b0c16530ec9f0ed47355f8189d6](https://github.com/M-Faheem-Khan/ThreatHunting/blob/main/05aa485c6efbef1c65e5876428d00cbb72b85b0c16530ec9f0ed47355f8189d6/analysis.md) | YES | MS Excel (xlsx) | YES |
| [7c805f51ee3b2994e742d73954e51d7c2c24c76455b0b9a1b44d61cb4e280502](https://github.com/M-Faheem-Khan/ThreatHunting/blob/main/7c805f51ee3b2994e742d73954e51d7c2c24c76455b0b9a1b44d61cb4e280502/analysis.md) | YES | MS PowerPoint(ppt) | NO |
| [7974612d55958423ed64268bc4df602c9cd67fff5c248a3d14dac06ed6b03f04](https://github.com/M-Faheem-Khan/ThreatHunting/blob/main/7974612d55958423ed64268bc4df602c9cd67fff5c248a3d14dac06ed6b03f04/analysis.md) | YES | PowerShell (ps1) | NO |

## Maturity Matrix
**In Progress**
The purpose of the maturity matrix is to determine the maturity of the malware based off of the following factors Obfuscation, Attack Techinques & Functions/API used. 

| Indicators | Severity |
|------------|----------|
| Obfuscation | Low |
| Attack Technique | Low |
| Functions Called | Low |
| **Severity Score** | 3 |

### Severity Score
The severity score is assigned based of the overall severity of the malware. Each indicator can be categorized as `Low`, `Medium` or `High` where each category is assigned a number 1 to 3. See table below for score for each category. The severity score is the sum of all indicators. The score can be a minimum of `3` and a maximum or `9`. The higher the score the higher the higher complexity of evasion via obfuscation and attacks techniques used. 

| Severity | Score |
|----------|-------|
| Low | 1 |
| Medium | 2 |
| High | 3 |

### Obfuscation
The goal of this indicator is to determine the following:
- How well is the code obfuscated?
- Is the code obfuscated using mutliple obfuscation techniqnues? 
- What obfuscation technique(s) was used?

#### Severity: Low
No Obfuscation
#### Severity: Medium
- Functions & Variables are obfuscated(replaced with random strings or single letter)
#### Severity: High
- Multiple obfuscation techniques are utilized 
- Strings/data are encoded(base64, reversed, tokenized, customer encoding, encrypted, etc.)

### Attack Techniques
The goal of this indicator is to determine the following:
- How effective is the technique?
- What technique(s) were used?
- Were there chained techniques?
- How hard is the implementation/execution of attack technique?

#### Severity: Low
- Generic or low attack sophistication
- No AV/NGAV evasion
- No persistence 
#### Severity: Medium
- Process/DLL Injections
- AV/NGAV evasion (Packed Binaries, Obfuscated Code, Process Hollowing, etc.)
- Privilege escalation to Administrator rights
- Persistence through one or more methods
- Exfiltertrate data (easily visible via Network Traffic inspection)
#### Severity: High
- Exploit for recent a vulnerability
- AV/NGAV evasion (Packed Binaries, Obfuscated Code, Process Hollowing, etc.)
- Persistence through one or more methods
- Privilege escalation to Administrator rights
- Ability to spread (Mailing lists, file shares etc.)
- Exfiltertrate data (not easily visible via Network Traffic inspection)

### Functions/API
The goal of this indicator is to determine the following:
- What functions/APIs were called?
- Using the [Malapi.io](https://malapi.io/) / [ATT&CK](https://attack.mitre.org/) function categorization:
  - Enumeration / Information Gathering
  - Persistence
  - Execution
  - Lateral Movement
  - Exfilteration

<!-- EOF -->
