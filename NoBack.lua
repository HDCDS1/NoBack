memory = require[[memory]]
script_properties("memory", "GTASA-x32", "GTASA-64")
script_author("P.E.I.X.E")
script_name("No_Back")
script_description("Bloqueia de forma limpa, sistema de olhar para trás")
function main()
	if MONET_VERSION == 3008000 then -- 64 BITS
		memory.copy(MONET_GTASA_BASE + 0x49F548, "\x5F\x09\x00\x72", 4, true) --veh
		memory.copy(MONET_GTASA_BASE + 0x49F5AC, "\x1F\x0D\x00\x72", 4, true) --ped
	elseif MONET_VERSION == 3006000 then -- 32 BITS
		memory.copy(MONET_GTASA_BASE + 0x3BF90E, "\x02\x00", 2, true) --veh
		memory.copy(MONET_GTASA_BASE + 0x3BF946, "\x03\xA0", 2, true) --ped
	end
	while true do
		wait(0)
	end
end

