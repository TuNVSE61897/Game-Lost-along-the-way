hasCrow			= getvar(flowchart, "HasCrow")
hasBroom		= getvar(flowchart, "HasBroom")
choseMike		= getvar(flowchart, "ChoseMike")
choseAlice		= getvar(flowchart, "ChoseAlice")
hasAnimalBook	= getvar(flowchart, "HasAnimalBook")

-- if not hasAnimalBook.value then
-- 	local go = luautils.Find("AnimalBook") -- Find a game object by name
-- 	luautils.Destroy(go) -- Destroy it
-- end

-- if not hasCrow.value then
-- 	local go = luautils.Find("Crow Feather") -- Find a game object by name
-- 	luautils.Destroy(go) -- Destroy it
-- end

-- if not hasBroom.value then
-- 	local go = luautils.Find("Broom") -- Find a game object by name
-- 	luautils.Destroy(go) -- Destroy it
-- else 
-- 	local go = luautils.Find("FlyingBook") -- Find a game object by name
-- 	luautils.Destroy(go) -- Destroy it
-- end

runblock(flowchart, "FadeToView")
conversation [[  Jack JackBaseRavenless left : ... *yawn* What time is it? 
hide jack:
Narrator: There's a few thing in his room that catches Jack's attention. 
]]		