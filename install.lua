-- drmon installation script
--
--

local libURL = "https://raw.githubusercontent.com/PlutoniumMuncher/Better-DER/refs/heads/master/lib/f.lua?token=GHSAT0AAAAAADA3VNWJE4TMGHLZ3RXOOLI6Z654WCA"
local startupURL = "https://raw.githubusercontent.com/PlutoniumMuncher/Better-DER/refs/heads/master/drmon.lua?token=GHSAT0AAAAAADA3VNWI6LA5YL5JJ5M2CX7UZ654UMA"
local lib, startup
local libFile, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

