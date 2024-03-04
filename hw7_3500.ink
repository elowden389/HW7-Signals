Welcome to the Smamsmey Parable! -> GAME_START

== GAME_START ==
 + [Play game]
    -> PLAY_GAME
 + [Settings]
    -> SETTINGS
 + [Quit Game]
    -> QUIT_GAME

== PLAY_GAME ==
Before we begin, allow me to do my narratorial duties and paint you the full picture.
-> First_paragraph

= First_paragraph
In a world consumed by chaos and destruction, one man's quest for agency burns brightly amidst the shadows of war. His name, Smamsmey, like thunder rolling across the heavens, echoes through the ravaged lands, inspiring both fear and hope in the hearts of those who dare to oppose him.
 -> Second_paragraph

= Second_paragraph
Smamsmey navigates a treacherous path, facing enemies seen and unseen, both literal and figurative. He does so for one reason and one reason only...

  * [I'm invested in this story.]
    ->Third_paragraph
  * [This story is trash.]
Well, I'm sorry, but I don't think you have what it takes to appreciate my story. Why don't you spend a couple minutes to reevaluate your choices before opening the game again? Thank you.
    -> END

= Third_paragraph
As I was saying, Smamsmey is motivated purely by... wait, what was I saying again? I can't remember at all. Surely I have it written down somewhere, hold on.
    * [Wait]
    -> Fourth_paragraph
    
= Fourth_paragraph
Where is it? God, I knew it was a stupid idea to ask what you thought of the story while I was still telling it. I just wanted to know what someone else thought so maybe I could change some things on the fly.
    * [Continue Waiting]
    -> Fifth_paragraph
    
= Fifth_paragraph
This sucks! Tell you what. Even though this is entirely your fault for ruining my train of thought, I'll take the blame for allowing you to speak up in the first place. Why don't you give me a couple of minutes, and then hopefully I'll have the full story ready for you? See you soon!
    -> END
    
== SETTINGS ==
  
  + [Adjust Volume]
    -> adjust_volume
    
  + [Adjust Brightness]
    -> adjust_brightness
  
  * [Disable Narrator]
    -> disable_narrator
    
  * [Disable Game]
    -> disable_game

  + [Go Back]
    ->GAME_START
    
= adjust_volume
{Volume decreased to 90%|Volume decreased to 75%|Volume decreased to 50%|*Yawn* Volume decreased to... 30%|Volume decreased to 15%|May I ask, what is your fascination with decreasing the game's volume? You realize this is a text-based game, right? This isn't actually doing anything.|Wow, volume decreased to 0%! Congratulations on this accomplishment!|You're hilarious.}
 -> SETTINGS

= adjust_brightness
Brightness adjusted.
-> SETTINGS

= disable_narrator
This option is used to determine which players violate our agreed upon code of conduct. Your data has been recorded, thank you for your cooperation! 
-> SETTINGS

= disable_game
// This is meant to be its own ending. The "game" returns an error message to make it seem as if the game's code has been deleted. //
Disabling...

== QUIT_GAME ==
{not SETTINGS: ->CONFUSED_ENDING} 

{SETTINGS: Come on, you were just messing around in the settings. At least play the game once before you quit. -> GAME_START} 

== CONFUSED_ENDING ==
// If the player chooses to quit the game without first checking the settings, they get locked into this ending. //
-> First_paragraph

= First_paragraph
Hang on... are you seriously going to quit the game before doing anything? You haven't even checked the settings menu. All you did was boot up the game and decide you didn't want to play.
  * [Yes.]
    -> Second_paragraph

= Second_paragraph
Are you sure? That doesn't make any sense to me. Surely you bought this game because you wanted to play it, right?
  * [No, I like wasting money.]
    -> Third_paragraph
  * [I was gifted this game actually.]
    -> Fourth_paragraph

= Third_paragraph
Well then, good riddance, I suppose.
    -> END
    
= Fourth_paragraph
That's even worse! You're telling me someone went through the added effort of paying for you to play this game, and you're just going to lie to them and pretend that you played the game even though you never actually intended to? You make me sick. Leave.
    -> END
    
    
    
    