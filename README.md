# p4-ee-sw-license

## LICENSE.txt
Paradigm4 Enterprise Edition Software License

## licensing.sh

Added script that on running on a directory, detects files where P4 EE license is missing, 
and adds the license to those files

**Usage**:

```sh
./licensing.sh WorkingDirectory PathToLicenseFile
```

**RECOMMENDATION**: Use this script only on version tracked working directories.


**Example usage**:

Say you need to add license to some files in the repo: `/tmp/repo`:

```sh
./licensing.sh /tmp/repo LICENSE.txt
```
