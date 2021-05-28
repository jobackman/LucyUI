local _, addon = ...

local defaults = {
  ['some-setting'] = "kekbur"
}

local function copyDefaults(src, dst)
	if type(src) ~= "table" then return {} end
	if type(dst) ~= "table" then dst = { } end
	for k, v in pairs(src) do
	if type(v) == "table" then
		dst[k] = copyDefaults(v, dst[k])
		elseif type(v) ~= type(dst[k]) then
		dst[k] = v
		end
	end
		return dst
end

LucyUIDB = copyDefaults(defaults, LucyUIDB)

addon.db = LucyUIDB
