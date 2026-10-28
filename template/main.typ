#import "@preview/stagehand:0.3.0":stagehand, centered, descriptions, stage-direction, prop, todo

#descriptions(
  (name:"Alice", group:"Nerds", desc:"A Nerd called Alice", actor:"Andrea"),
  (name:"Bob", group:"Jocks", desc:"A jock named Bob, played by Boris", actor:"Boris"),
  (name:"Cedric", group:"Nerds", desc:"Another Nerd", actor:"Celine")
)

#show: stagehand.with(
  lang: "en",
  title: none,
  descriptor: none,
  authors: none,
  font: "Libertinus Serif",
  font-size:14pt,
  toc: true,
  dramatis-personae: true,
  props: true,
  todos: true,

  speaker-layout:"fancy",
  blockage-indent: 10em,
  speaker-function: smallcaps,
  break-size: 900,
  parentheses-mean-stage-directions: true,
  index-means-speaker: true,
  stage-direction-color: gray,
  has-header:true,
  has-footer: true,
  speakers-in-header: true,
  custom-localization: none,
  chapter-settings: (
    (title: auto, numbering: "I", pagebreak:true),
    (title: auto, numbering: "1", pagebreak: true),
  ),
)
= The introduction
== The first scene
/ Alice:
This is a dialogue.
/ Bob:
Indeed it is. It can go on for a while. #lorem(40)
(Alice is growing annoyed at the nonsense) You are annoyed? Good thing you put that in parentheses, so I can more easily understand in-line stage directions.
/ Alice (sceptic):
I'd rather wear my emotions on the sleeve, and put them right behind my name.
#stage-direction[Bob gestures around. It is a highly complex gesture, that effectively demonstrates the method of creating blocked stage directions.]
/ Bob:
The command takes an optional parameter: 'blocked'. If 'blocked' is false, it looks like this: #stage-direction(blocked: false)[He gestures around in a surprising lack of parentheses.]
/ Alice:
Instead of having to write "\#speaker" and "\#stage-direction" all the time, we can import these names with dedicated aliases:
#import "@preview/stagehand:0.3.0":stage-direction as d, speaker as s
#d[Alice uses some magic and imports the command with a new name.]
/ Bob:
We can also define functions for our names, so we don't have to write them out all the time.
/ Alice (relieved) :
This is much better.
== Another scene
#d[Alice and Bob appear on stage.]
/ Alice:  We are in a new scene. At the top of the page our names appear.
/ Both [Alice] [Bob]: How curious.
/ Alice:  Bob appears on top, even though he doesn't have his own line, because he was added as a speaker through the use of square brackets in the line spoken by both of us.
/ Loudspeaker [] :
Please fasten your seatbelts.
/ Alice:  The loadspeaker is not a real character, we use empty square brackets to prevent it from appearing on top of the page or in the Dramatis Personae. It is more like a prop, actually. Speaking of which...
#d[Alice takes out her #prop[screwdriver] and disassembles the #prop[loadspeaker].]
/ Alice:  See what I did there? Scroll down, the props show up in a prop list.
= And now?
== A last scene
/ Bob:  There is so much more to do. #todo[But what exactly??] While editing, it can be useful to have these notes.
/ Alice:  They also show up at the end of the document, in their dedicated list. You can click on them, to go back here.
/ Bob:  There are many options to play around in the `#show: theatre.with(...)` block at the start of the page. Almost all of these options are set to their default values, so you can remove them if you want to. #todo[Change some default values]
== Or is there more?
/ Cedric:
I'm here too, and I will show up in the Dramatis personae
/ Xaver:
Me too, but without a description, a group or an actor, because I was not mentioned in the `#descriptions` call. But just saying something is enough to be included.
/ Cedric:
Tell us a little poem!
/ Xaver:
#centered[
Roses are red\
Violets are blue\
This text is centered\
Juchu.
]
/ Cedric:  Good thing you used the `centered` function instead of pure Typst alignments, this works better in different themes.
