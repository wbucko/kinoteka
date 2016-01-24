# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

Movie.create!([{
		 title: 'Big Bang Theory',
		 year: 2007,
		 director: 'Chuck Lorre',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/81Q4YEuPKwL._SL1500_.jpg',
		 review: "Leonard and Sheldon are brilliant physicists, the kind of 'beautiful 
			minds' that understand how the universe works. But none of that genius helps 
			them interact with people, especially women. All this begins to change when a 
			free-spirited beauty named Penny moves in next door. Sheldon, Leonard's 
			roommate, is quite content spending his nights playing Klingon Boggle with 
			their socially dysfunctional friends, fellow Caltech scientists Wolowitz and 
			Koothrappali. However, Leonard sees in Penny a whole new universe of 
			possibilities ... including love."
	}, {
		 title: 'Lie to me',
		 year: 2009,
		 director: 'Samuel Baum',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91cZthjmxrL._SL1500_.jpg',
		 review: "Dr. Cal Lightman (Tim Roth), a deception specialist, believes that 'the truth is written on all our faces.' Unlike the psychics of Medium and The Mentalist, he reads body language rather than minds or dreams to crack cases, from murders to business matters, for a variety of law enforcement agencies. His team includes Eli Loker (Brendan Hines), Ria Torres (Monica Raymund), and Dr. Gillian Foster (The Practice's Kelli Williams). Though the show opens with the disclaimer that 'the following story is fictional and does not depict any actual person or event,' Lightman often looks to real life for reference, so archival images enter into each episode, sometimes resulting in cheap shots at political figures, like Richard Nixon ('I am not a crook'), but their contradictory gestures can be instructive. Overall, Lie to Me manages to feel both familiar and distinctive. Sleuths who deal better with problems than with people are a television staple, and Lightman is no different (Jennifer Beals plays his district attorney ex-wife). He also condescends to those he considers intellectually inferior or overly instinctive--like Torres--but Roth makes him sufficiently sympathetic. The stories, however, offer more surprises, since they cover the gamut from depressed pilots to gambling addicts. During these 13 episodes, Torres falls for a secret service agent, Foster experiences a personal setback, Loker experiences a professional one, and Ben Reynolds (ER's Mekhi Phifer) becomes a liaison between the Lightman Group and the FBI."
	}, {
		 title: 'Breaking Bad',
		 year: 2008,
		 director: 'Vince Gilligan',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/51CZO-3OGNL.jpg',
		 review: "Emmy® Award winner Bryan Cranston stars as Walter White, a down-on-his-luck chemistryteacher struggling to make ends meet for his wife (Anna Gunn) and physically challengedson (RJ Mitte). Everything changes when Walter receives a startling diagnosis: terminallung cancer. With only a few years to live and nothing to lose, Walter uses his training as achemist to cook and sell crystal meth with one of his former students (Aaron Paul). As hisstatus grows, so do his lies, but Walt will stop at nothing to make sure his family is taken careof after he’s gone, even if it means putting all their lives on the line. Executive produced byVince Gilligan and Mark Johnson."
	}, {
		 title: 'Dexter',
		 year: 2006,
		 director: 'Michael Cuesta',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91S-0DP41EL._SL1500_.jpg',
		 review: "Dexter is based on the compelling novel 'Darkly Dreaming Dexter' by Jeff Lindsay. Orphaned at the age of four and harboring a traumatic secret, Dexter Morgan (Dexter Morgan (Emmy- and Golden Globe- nominated actor Michael C. Hall from 'Six Feet Under') is adopted by a police officer who recognizes Dexter's homicidal tendencies and guides his son to channel his gruesome passion for human vivisection in a constructive way - by killing those heinous perpetrators that are above the law or who have slipped through the cracks of justice. A respected member of the police force, a perfect gentleman and a man with a soft spot for children, it's hard not to like Dexter. Although his drive to kill is unflinching, he struggles to emulate normal emotions he doesn't feel, and to keep up his appearance as a caring, socially responsible human being."
	}, {
		 title: 'Suits',
		 year: 2011,
		 director: 'Aaron Korsh',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/61XzKzRzONL._SL1073_.jpg',
		 review: "The new original series Suits delves into the fast-paced, high-stakes world of a top Manhattan corporate law firm where hotshot attorney Harvey Specter (Gabriel Macht, “Love and Other Drugs”) makes a risky move by hiring the brilliant but unmotivated, Mike Ross (Patrick J. Adams, Lost), as his new associate. The only problem is he doesn't have an actual law degree. With his encyclopedic knowledge and uncanny knack of remembering things, Mike proves to be a legal prodigy despite the absence of bonafide legal credentials.  Bound by their secret, the two are forced to keep up the charade as they become an irrepressible duo. The series also stars Meghan Markle (CSI Miami), Gina Torres (Gossip Girl), Sarah Rafferty (Brothers and Sisters) and Rick Hoffman (Samantha Who).   This 3-disc set features all 12 Season One episodes of Suits, the hit show that critics are hailing as, 'crisp, clean and perfectly tailored' (TVFanatic.com)."
	}, {
		 title: 'True Detective',
		 year: 2014,
		 director: 'Nic Pizzolatto',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91awzyMpCGL._SL1500_.jpg',
		 review: "HBO premieres a new drama series, True Detective, this season focusing on Martin Hart (Woody Harrelson) and 'Rust' Cohle (Matthew McConaughey), two detectives and former partners who worked in Louisiana's Criminal Investigation Division in the mid-1990s. In 2012, for reasons not immediately revealed, the two are interviewed separately by investigators about their most notorious case: the macabre 1995 murder of a prostitute by a possible serial killer with disturbing occult leanings. As they look back on the case, Hart and Cohle's personal backstories and often-strained relationship become a major focal point. Hart, an outgoing native Louisianan and family man whose marriage is being frayed by work stress and infidelity, is (at least on the surface) the polar opposite of Cohle, a lone-wolf pessimist and former narcotics detective from Texas. While the plot is moved forward by their shared obsession to hunt down the ritual killer, the true drama centers around the mercurial nature of Hart and Cohle's relationship and personalities, and how they affect each other as detectives, friends, and men."
	}, {
		 title: 'Gladiator',
		 year: 2000,
		 director: 'Ridley Scott',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/81QVTiMK1wL._SL1500_.jpg',
		 review: "A man robbed of his name and his dignity strives to win them back, and g ain the freedom of his people, in this epic historical drama from direc tor Ridley Scott. In the year 180, the death of emperor Marcus Aurelius (Richard Harris) throws the Roman Empire into cha os. Maximus (Russell C rowe) is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus ' devious son Commodus (Joaquin P hoenix) ascends to the throne, Maximus is set to be executed. He escapes , but is captured by slave traders. Renamed Spaniard and forced to becom e a gladiator, Maximus must battle to the death with other men for the a musement of pay ing audiences. His battle skills serve him well, and he becomes one of the most famous and admired men to fight in the Colosseum . De termined to avenge himself against the man who took away his freedo m and laid waste to his family, Maximus believes that he can use his fam e and skill in the ring to avenge the loss of his family and former glor y. As the gladiator begins to challenge his rule, Com modus decides to p ut his own fighting mettle to the test by squaring off with Maximus in a battle to the death. Gladiator also featu res Derek Jacobi, Connie Niel sen, Djimon Hounsou, and Oliver Reed, who died of a heart attack midway through production." 
	}, {
		 title: 'The Wolf of Wall Street',
		 year: 2013,
		 director: 'Martin Scorsese',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/71q7DTVY45L._SL1054_.jpg',
		 review: "Revered filmmaker Martin Scorsese directs the story of New York stockbroker Jordan Belfort (Leonardo DiCaprio). From the American dream to corporate greed, Belfort goes from penny stocks and righteousness to IPOs and a life of corruption in the late 80s. Excess success and affluence in his early twenties as founder of the brokerage firm Stratton Oakmont warranted Belfort the title – 'The Wolf of Wall Street.' Sex. Money. Power. Drugs. Brace yourself for an outrageous true story from legendary filmmaker Martin Scorsese. Leonardo DiCaprio stars as a young stockbroker hungry for a life of non-stop thrills where corruption was king and more was never enough. His rise to power earned him the title The Wolf of Wall Street. Together Scorsese and DiCaprio deliver a story of American excess." 
	}, {
		 title: 'Shutter Island',
		 year: 2010,
		 director: 'Martin Scorsese',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/916VtXkyrHL._SL1500_.jpg',
		 review: "Academy Award® winning† director MARTIN SCORSESE once again teams up wit h LEONARDO DICAPRIO in this spine-chilling thriller that cr itics say ' sizzles with so much suspense that it's hot to the touch.'** When U.S. M arshal Teddy Daniels (DiCaprio) arrives at the a sylum for the criminall y insane on Shutter Island, what starts as a routine investigation quic kly takes a sinister turn. As the inv estigation unfolds and Teddy unco vers more shocking and terrifying truths about the island, he learns the re are some places that ne ver let you go. **Peter Travers, ROLLING ST ONE." 
	}, {
		 title: 'Seven',
		 year: 1995,
		 director: 'David Fincher',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91Xdok-6W0L._SL1500_.jpg',
		 review: "A retiring cop and his replacement track a psychotic killer who's using the seven deadly sins as a guide. Starring Brad Pitt, Morgan Freeman and Gwyneth Paltrow." 
	}, {
		 title: 'The Usual Suspects',
		 year: 1995,
		 director: 'Bryan Singer',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/51FSYTWAsxL.jpg',
		 review: "Winner of two 1995 Academy Awards, including Best Original Screenplay, this masterful, atmospheric film noir enraptured audiences with its complex and riveting storyline, gritty, tour-de-force performances (including an OscarÂ(r)-winning* turn by Kevin Spacey) and a climax that is truly deserving of the word stunning. Also starring Stephen Baldwin, Gabriel Byrne, Chazz Palminteri, Kevin Pollak and Pete Postlethwaite, this 'thoroughly engrossing film (HBO) is so gripping and diabolically clever (The Wall Street Journal) that it becomes a maze you'll be happy to get lost in (Los Angeles Times)! Held in an L.A. interrogation room, Verbal Kint attempts to convince the feds that the mythic crime lord not only exists, but was also responsible for drawinghim and his four partners into a multi-million dollar heist that ended with an explosion in San Pedro Harborleaving few survivors. But as Kint lures his interrogators into the incredible story of this crime lord's almost supernatural prowess, so too will you be mesmerized by a lore that is completely captivating from beginning to end!"
	}, {
		 title: 'Pulp Fiction',
		 year: 1994,
		 director: 'Quentin Tarantino',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91Wpbzk%2BHCL._SL1500_.jpg',
		 review: "Pulp Fiction was a groundbreaking film in a couple of different ways. It was an independent release and its success opened the door up for all kinds of maverick filmmakers and companies to release films that otherwise would have never been made. It also had a profound stylistic influence. It was a hip movie with sharp dialogue, graphic violence, cool soundtrack and intricate plotlines. In the wake of its success, many movies try to copy this style, but most failed as they lacked Quentin Tarantino's unique vision. Mr. Tarantino was able to pull John Travolta out of a decade long funk and directed him to the finest performance of his career and one that garnered his second Academy Award nomination. He also pushed Bruce Willis to a stellar performance that showed he was more than just an action hero. The cast is first rate including a beguiling Uma Thurman, Ving Rhames, Harvey Keitel, Eric Stolz, Rosanna Arquette and Christopher Walken. The best performance of all is given by Samuel L. Jackson who is absolutely amazing. It was a crime that he did not win the Academy Award for the role. Pulp Fiction is broken up into three parts and includes flashbacks, flash-forwards and twists and turns and some mysteries that are never revealed. It is a rare film that is both stylish and full of substance. The new Collector's Edition is a huge step up from the original edition which offered virtually no extras. The sound and visuals are crisper and cleaner and the extra features are great. One excellent extra is a Siskel & Ebert show dedicated to the Tarantino phenonmeon, which looking at it eight years later is quite interesting." 
	}])	
