# licensing.sh

- Script to make life easier while adding licenses en-mass to files in a selected directory. 
- File types on which license is to be added has to be hard-coded for now in the script (e.g. ".R .py")
- Files already containing the P4 license are not touched

**Usage**:

```sh
./licensing.sh /PATH/TO/CODE/DIRECTORY /PATH/TO/LICENSEFILE
```

**Example usage**:

Say you need to add license to some files in the repo: `/tmp/repo`:

```sh
./licensing.sh /tmp/repo LICENSE.txt
```

##CAUTION

Be careful what directories you use this script on. You do not want to do this on `/` or `/home` as it walks the subdirectories and applies license in all `*.R` and `*.py` files it finds. 


