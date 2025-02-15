help([[
Exposes a python instance running 3.9.7 for rivanna.


]])

local workspace = "/project/ds6011-sp22-002"

local name = myModuleName()
local version = myModuleVersion()
local base = pathJoin(workspace, "python/base")
prepend_path("PATH", pathJoin(base, 'versions', version, 'bin'))
setenv("LD_LIBRARY_PATH", pathJoin(base, 'ssl/lib'))
set_alias("python", "python3.9")

whatis("Name: ".. name)
whatis("Version: ".. version)
whatis("Description: ".. "Portable Python 3.9.7 for Rivanna")