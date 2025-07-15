# Building and testing on `nyx`

1. Clone the repo onto the login node
2. `cd dlmoR`
3. Set the necessary environment variable:
	- `export APPTAINER_TMPDIR=~/ptmp/tmp`
	- `export APPTAINER_CACHEDIR=~/ptmp/tmp`
4. Build the container:
	- `apptainer build --fakeroot dlmoR.sif Singularity.def`
5. Test the container:
	- `apptainer exec dlmoR.sif Rscript test_case.R`
