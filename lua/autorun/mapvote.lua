MapVote = {}
MapVote.Config = {}

    MapVote.Config = {
        MapLimit = 20,
        TimeLimit = 30,
        AllowCurrentMap = false,
    }

function MapVote.HasExtraVotePower(ply)
	-- Players with extra vote power.
	if ply:IsAdmin() then
		return true
	end

	return false
end


MapVote.CurrentMaps = {}
MapVote.Votes = {}

MapVote.Allow = false

MapVote.UPDATE_VOTE = 1
MapVote.UPDATE_WIN = 5

if SERVER then
    AddCSLuaFile()
    AddCSLuaFile("mapvote/cl_mapvote.lua")

    include("mapvote/sv_mapvote.lua")
else
    include("mapvote/cl_mapvote.lua")
end
