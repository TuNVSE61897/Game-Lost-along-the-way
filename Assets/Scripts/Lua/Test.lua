-- Gobal variables can be embedded using the {$VarName} syntax.
adjective = "riveting"

conversation [[
john bored left: Oh, so that's how you use the Conversation command.
sherlock deduction right nowait: Yes, well done John. {w=1.5}
You catch on quickly don't you?
hide john "offscreen left" <<<: I sure do.
sherlock smirk:  {w=0.5}
sherlock  >>>:

-- This is a comment, it doesn't appear in the conversation

john angry left >>>: Wait {w=0.6}
middle noclear:, what!
left nofade: There's no need to be rude Sherlock!
bored: Not like that would stop you.
]]

conversation [[
sherlock bored <<<: AHA! So that's how you do a conversation from Lua!
Fascinating.
john bored left: Yes, {$adjective}.
]]

conversation [[
sherlock deduction right: Are you a butt head?
]]

setmenudialog(menudialog)

-- Gets the active menu dialog, or creates one if none exists yet
getmenudialog()

-- Display a list of options in a MenuDialog
-- (Note the curly braces here!)
butthead = getvar(flowchart, "butthead")
butthead.value = choose{ "Yes", "No", "Maybe" }

-- if choice == 1 then
--     call("Good")
--     butthead = 1
-- elseif choice == 2 then
--     call("Bad")
-- elseif choice == 3 then
-- 	call("Branching Test")
-- end

-- Text Variation
-- This behaviour can be modified with certain characters at the start of the [], e.g. [&a|b|c];

--     & does not hold the final element it wraps back around to the beginning in a looping fashion
--     ! does not hold the final element, it instead returns empty for the varying section
--     ~ chooses a random element every time it is encountered

