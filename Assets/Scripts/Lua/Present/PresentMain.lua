clickedObject = getvar(flowchart, "clickedObject")
hasCrow		= getvar(flowchart, "HasCrow")
hasBroom		= getvar(flowchart, "HasBroom")
choseMike		= getvar(flowchart, "ChoseMike")
choseAlice	= getvar(flowchart, "ChoseAlice")
hasAnimalBook	= getvar(flowchart, "HasAnimalBook")

-- Deactivate other clicks on objects
runblock(flowchart, "SetUnclickable")

--Local variables
todaysPlan = "I should head out soon."
pictureContent = "There is a photo of Jack smiling on the beach."
if choseMike.value then
	todaysPlan = "I wonder what Mike has planned today!"
	pictureContent = "There is a photo of Jack and Jenny smiling on the beach."
end
if choseAlice.value then
	todaysPlan = "Better not keep my love waiting!"
	pictureContent = "There is a photo of Jack and Mike smiling on the beach."
end

if clickedObject.value == "calendar" then
	conversation [[ Narrator: It's an old calendar which has a red circle around October 11th. 
	Jack: Being excited and looking forward my birthday. It sort of makes me feel like a kid again, hehe.
	They said the 30rd birthday is an important milestone to a wizard.
	I can use fully all my magical power from now on.
	The weather is beautiful today. {$todaysPlan}
	]]	
	--
elseif clickedObject.value == "animalBook" then
	conversation [[ Narrator: The book's title is "Fantastic Critters And Where They Could Be Hiding"
	Mike's signature is on the cover.
	]]
    setmenudialog(menudialog)
	getmenudialog()
	local read = choose{ "Read it", "Don't reat it" }
	if read == 1 then
		conversation [[ AnimalBook: Things you have to know before having a flying animal.
		1. Owls sleep in daytime and can be lost sometimes. If you need a faster way to reach your friends, use Messenger instead.
		2. Dragons don't breathe fire. Stop reading too many children books.
		3. Crows love shining things. You cannot return the crow and have refund just because it keeps hiding your belongs, based on Articles 81 and 82 of the EC Treaty and Chapters I and II of Part I of the Civil Procedure Act.
		4. Unicorns don't exist even in Magical World. Stop dreaming.
		]]
	end
    --
elseif clickedObject.value == "potionBook" then
	conversation [[ Narrator: The book's title is "Modern Meats Meet Melange"]]
    setmenudialog(menudialog)
	getmenudialog()
	local read = choose{ "Read it", "Don't reat it" }
	if read == 1 then
		conversation [[ PotionBook: How to make Focusing Potion, which helps you to stick your butt on the chair until you finish the task.
		In the cauldron boil and bake
		Add fillet of a fenny snake,
		Scale of dragon, tooth of wolf,
		Witches mummy, maw and gulf
		]]
		knowsPotions = getvar(flowchart, "KnowsPotions")
		knowsPotions.value = true;
	end
	--
elseif clickedObject.value == "charmBook" then
	conversation [[ Narrator: The book's title is "Charm's For Dummies"]]
    setmenudialog(menudialog)
	getmenudialog()
	local read = choose{ "Read it", "Don't reat it" }
	if read == 1 then
		conversation [[ CharmBook: How to Win Anyone Over in Any Situation!
		If you are good-looking, you can skip this book and have a refund.
		If you are not good-looking but have a lot of money, you can skip too.
		If you are not either good-looking or rich, we recommend you to buy the book "How to be rich" in our series.
		]]
	end
elseif clickedObject.value == "flyingBook" then
	conversation [[ Narrator: The book's title is "Flying 101"]]
    setmenudialog(menudialog)
	getmenudialog()
	local read = choose{ "Read it", "Don't reat it" }
	if read == 1 then
		conversation [[ FlyingBook: If you are not confident in your flying skill, consider taking a train or driving a car.
		You can be an idiot, but not being an idiot who causes accidents for other people.
		]]
		conversation [[ Jack: This book is a reminder for why I still only use my car. ]]
	end
	--
elseif clickedObject.value == "broom" then
	conversation [[ Narrator: An old broom which looks too small for an adult is place in the corner of the broom. ]]
	conversation [[ Jack: I can't use it anymore, but it's a gift from my parents.]]
	--
elseif clickedObject.value == "picture" then
	conversation [[ Narrator: {$pictureContent} ]]
	--
elseif clickedObject.value == "crowFeather" then
	conversation [[ Narrator: A black feather is framed and hanging on the wall.]]
	conversation [[ Jack: Oh right. I haven't fed Nothewig today. ]]	
	runblock(flowchart, "CrowSound")
	--
elseif clickedObject.value == "window" then
	conversation [[ Narrator: The sun shines into the room. Jack looks at his watch.]]
	conversation [[ Jack: I haven't celebrated birthday in a while.
	So I don't want to be late, but I still have some time to relax.
	]]	
	setmenudialog(menudialog)
	getmenudialog()
	local leave = choose{ "Leave now", "Stay" }
	if leave == 1 then
		runblock(flowchart, "NextScene")
	end
end
runblock(flowchart, "SetClickable")