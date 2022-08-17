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
The purpose of the maturity matrix is to determine the maturity of the developer of the malware based off of the following indicators Obfuscation, Attack Techinques & Functions called. 

| Indicators | Severity |
|------------|----------|
| Obfuscation | Low |
| Attack Technique | Low |
| Functions Called | Low |

### Obfuscation
The goal of this indicator is to determine the following:
- How well is the code obfuscated?
- What obfuscation technique(s) was used?

### Attack Techniques
The goal of this indicator is to determine the following:
- How effective is the technique?
- What technique(s) were used?
- Were there chained techniques?
- How hard is the implementation/execution of attack technique?

### Functions called
The goal of this indicator is to determine the following:
- What functions were called?
- Using the [Malapi.io](https://malapi.io/) function categorization determine the 

<!-- EOF -->
