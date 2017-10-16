// **********************************************
// Standard	Voice Module
// **********************************************

// Diese Klasse	kann beliebig von den Skriptern	erweitert um
// "VAR	STRING xxxx" erweitert werden, diese k�nnen	dann in	den
// einzelnen SVM - Instanzen initialisiert werden.


CLASS C_SVM
{
// SC hat Waffe oder Magie gezogen oder zielt auf NSC
	VAR	STRING	StopMagic;					// NSC  sieht wie in seiner N�he gezaubert wird -> er fordert auf, damit aufzuh�ren!
	VAR	STRING	ISaidStopMagic;				// NSC hat bereits mit $StopMagic gewarnt und greift nun an	(nachdem er	diesen Satz	gesagt hat;	WICHTIG: dies ist KEINE	letzte Warnung,	sonder sofort Angriff!)

	var string	WeaponDown				;	//ZS_AssessFighter: SC steht mit gezogener Waffe vor NSC -> NSC ist NEUTRAL zu SC	-> (herausfordernd,	bei	P�nten-Stimme etwas	unsicher, trotzdem kernig)
	var string	ISaidWeaponDown			;	//Kommt nachdem der SC $WeaponDown ignoriert hat!

	VAR	STRING	WatchYourAim;				// ein FRIENDLY-SC zielt mit einer Fernkampfwaffe auf den NSC .	'Pa� auf! Ziel woanders	hin!' B_Orc_AssessThreat hat das auch noch
	var string	WatchYourAimAngry		;	// SC zielt mit einer Fernkampfwaffe auf den Angry-NSC. (genervte Auffordern, damit	aufzuh�ren)
	VAR	STRING	WhatAreYouDoing;			// NSC wird von einem FRIENDLY-SC/NSC geschlagen

// SC hat Waffe weggesteckt, NSC beendet Kampf
	VAR	STRING	LetsForgetOurLittleFight;	//Friede, kann direkt kommen ( Wenn freundliche k�mpfen und der Spieler die Waffe wegsteckt) oder als Reaction �ber das news-Ged�chtnis, sollte daher Zeitneutral sein (--> nicht wie jetzt lass uns den Streit von letztens vergessen

// NSC hat Gegner aus den Augen verloren
	VAR	STRING	Strange			;			// 1. NSC wird attackiert -> rennt mit gezogener Waffe zum Angreifer ->	kann ihn pl�tzlich nicht mehr entdecken	-> (muttering to himself)
											// 2. NSC sieht	einen Mord -> rennt	mit	gezogener Waffe	zum	M�rder -> kann ihn pl�tzlich nicht mehr	entdecken

// NSC greift an!
	var string	DieMonster				;	// NSC greift Monster an -> "Aus dir mach ich Gulasch, Drecksvieh!"
	var string	DieMOrtalEnemy;				// Der Nsc greift an, da er durch die Story permanent Hostile ist, d.h. die Lager sind in Blutfehde

	VAR	STRING	NowWait;					// NSC hat den SC fr�her noch NICHT besiegt -> SC greift den NSC an -> "Na warte!"
	VAR	STRING	YouStillNotHaveEnough	;	// NSC hat den SC fr�her besiegt ->	SC greift den NSC an -> "Hast du immer noch nicht genug?!"

	var	string	YouAskedForIt			;	// 1. SC hat eine Aufforderung ignoriert: den Raum zu verlassen, ein Item zur�ckzugeben, seine Waffe wegzustecken -> "Wer nicht h�ren will mu� f�hlen..."
	var string	NowWaitIntruder			;	// SC hat einen bewachten Durchgang durchbrochen...

	var	string	IWillTeachYouRespectForForeignProperty;	// 1. SC benutzt ein Besitz-Mob(T�r,Fallgitter-Drehkreuz,Kiste,...) und	wird ohne Vorwarnung attackiert
											// 2. SC tr�gt Waffe des NSCs -> NSC ist st�rker und holt sie sich mit Gewalt wieder ->	vorher dieser Spruch

	VAR	STRING	DirtyThief;					// 1. NSC ertappt den (schw�cheren)	SC mit den Fingern in den eigenen Taschen
											// 2. NSC sieht	wie	der	(schw�chere) SC	etwas nimmt, da� ihm geh�rt	(z.B. Waffe	auf	den	Tisch)
											// 3. NSC sieht	feindlichen, schw�cheren SC, der ihn vorher	mal	beklaut	hat	und	sagt ihm diesen	Spruch,	bevor er angreift "Da hab ich Dich also	wieder,	Du dreckiger Dieb"
											// 4. Nsc ist in einen Raum eingedrungen

	var string	YouAttackedMyCharge		;	// SC/NSC greift einen Sch�tzling einer NSC-Wache an -> Wache attackiert den Angreifer danach
	var string	YouKilledOneOfUs;			// NSC erblickt feindlichen SC, der einen Freund des NSCs get�tet hat -> Angriff!

// im Kampf
	VAR	STRING	Dead			;			// T�dlich verletzt
	VAR	STRING	Aargh_1			;			// Treffer kassiert im Kampf	
	VAR	STRING	Aargh_2			;			// Treffer kassiert im Kampf	
	VAR	STRING	Aargh_3			;			// Treffer kassiert im Kampf	

	var string	Berzerk			;			// Wahnsinnsschrei im Zustand der Raserei!

// SC hat NSC niedergeschlagen oder bedroht
	VAR	STRING	YoullBeSorryForThis;		// NSC wurde durch SC/aNSC besiegt und wacht aus der Ohnmacht wieder auf: 'Das wird	Dir	noch leidtun!'

	VAR	STRING	YesYes			;			// 1. NSC wurde	im Kampf besiegt ->	erwacht	wieder ist aber	sch�cher als sein Kontrahent
											// 2. SC zieht Waffe oder n�hert sich mit Waffe und NSC ist schw�cher als SC
// NSC flieht
	var string	ShitWhatAMonster		;	// NSC flieht vor zu starkem Monster -> "Schei�e, was ein H�llenvieh. Nichts wie weg!"
	VAR	STRING	Help;						// NSC flieht vor Gegner, Babe Nsc flieht vor Spieler, Orcs haben das auch
	var	STRING	WeWillMeetAgain;			// NSC flieht vor Gegner, ist aber eigentlich St�rker als er, ist aber trotzdem besiegt worden

// SC wurde von NSC besiegt und wird gepl�ndert
	VAR	STRING	NeverTryThatAgain	;		// NSC hat Gegner besiegt -> ("Versuch das NIE wieder!!")
	var string	ITakeYourWeapon;			// NSC pl�ndert bewu�tlosen SC/aNSC. W�hrend er sich b�ckt, um nach der vom Besiegten fallengelassenen Waffe zu greifen sagt er diesen Spruch.
	VAR	STRING	ITookYourOre	;			// NSC pl�ndert bewu�tlosen SC/aNSC. Nachdem er sich einen Teil des Erzes genommen hat, sagt er diesen Spruch.
	var string	ShitNoOre		;			// NSC �rgert sich dar�ber, da� er beim Durchsuchen eines bewu�tlosen/toten K�rpers kein Erz gefunden hat!

// NSC verwarnt SC
	VAR	STRING	HandsOff;					// SC manipuliert ein MOB (Drehkreuz, Truhe, T�r) und ein befreundeter bzw. gildengleicher NSC sieht das...
	VAR	STRING	GetOutOfHere		;		// NSC erwischt	schw�cheren	SC in seiner H�tte -> ("Raus hier")	(SC	soll aus Raum gehen)
	var	string	YouViolatedForbiddenTerritory		;	// SC wird beim Betreten eines verbotenen Portalraums erwischt -> Warnung!

	var	STRING	YouWannaFoolMe;				// SC schnappt NSC ein Item vor der Nase weg und wird mit $GiveItToMe aufgefordert es zur�ckzugeben -> SC gibt ein falsches Item an den NSC -> 'Willst Du mich verarschen'

	VAR	STRING	WhatsThisSupposedToBe	;	// 1. SC schleicht vor den Augen des NSCs -> "Was schleichst Du	hier rum?" (besser als "Was	soll das denn werden", weil	besseres Feedback!)
											// 2. SC bewegt	sich hinter	einer Wache	-> diese dreht sich	um und sagt	dann
	var string	WhyAreYouInHere			;	//im ZS_ClearRoom / SC steht in verbotenem Portalraum	-> schw�cherer NSC fragt
	var string	WhatDidYouInThere		;	// Wache sieht Sc aus einer H�tte rauskommen und verwarnt ihn, ohne das ein Angriff folgt

	VAR	STRING	WiseMove;					// 1. NSC wurde	gewarnt, seine Waffe wegzustecken ($RemoveYourWeapon) -> SC	befolgt	dies und steckt	die	Waffe weg
											// 2. SC steht in verbotenem Raum und wird mit $GetOutOfHere aufgefordert, rauszugehen -> SC befolgt die Aufforderung
											// 3. SC hat NSC ein Item vor der Nase weggeschnappt und wurde mit $GiveItToMe aufgefordert	es zur�ckzugeben ->	SC gehorcht

// NSC alarmiert/warnt andere NSCs vor SC
	VAR	STRING	Alarm;						// Wache alarmiert die Sichtung	eines permanent	HOSTILE	SC/aNSC	"Alaaaaaaarm!!!!!"
											// Nicht Wache sieht wie ein Portalraum betreten wird, der einer Gilde zugeordnet ist und ruft die Wachen
											// Gem�se (NpcWorker) ruft Wachen nach einem Diebstahl/beobachteten Diebstahl etc.
	var string	IntruderAlert;				// SC hat einen bewachten Durchgang durchbrochen und die Wache alarmiert alle umstehenden
	VAR	STRING	BehindYou;					// NSC sieht, wie ein anderer NSC vom SC bestohlen wird	und	warnt das Opfer

// NSC beobachtet Kampf
	var	string	TheresAFight	;			// NSC entdeckt	einen Kampf	und	will zuschauen (ZS_WatchFight) -> vorher ein Spruch	wie	"Hey da	dr�ben gibt's einen	Kampf"
	VAR	STRING	HeyHeyHey;					// Hintergrund anfeuern	beim Beobachten	eines Kampfes: 'Hau	ihm	aufs Maul!'	(kommt alle	paar Sekunden!)
	VAR	STRING	CheerFight;					// NSC ist im Zustand WatchFight: Neutraler	K�mpfer	schl�gt irgendeinen Typen. '5 Erz auf den Dicken'
	VAR	STRING	CheerFriend;				// NSC ist im Zustand WatchFight: Freund landet	einen Treffer. 'Immer in die Fresse!'
	VAR	STRING	Ooh;						// NSC ist im Zustand WatchFight: Freund kriegt	aufs Maul. 'Mist - das tat weh.'
	var	STRING	YeahWellDone;				// NSC sieht, wie SC/aNSC, zu dem er ANGRY/HOSTILE ist get�tet wird. 'Gut gemacht, das hat sie Sau verdient.'

// NSC-Gegner flieht
	VAR	STRING	RunCoward;					// 1. Der NSC befindet sich	im Zustand WatchFight -> einer der K�mpfer haut	ab
											// 2. Der Gegner des NSCs flieht
	var	string	HeDefeatedHim	;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC besiegt 	(WICHTIG: dies ist der normale Ausgang!)
	var	string	HeDeservedIt	;			// NSC sieht wie ein SC/aNSC, zu dem er	ANGRY/HOSTILE steht, besiegt wird -> ("DAS hat er verdient!")
	var	string	HeKilledHim		;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC t�tet	(WICHTIG: dies ist ein Skandal, niemand wird normalerweise	in einer "Schl�gerei" get�tet)
	var	string	ItWasAGoodFight	;			// NSC sieht wie ein FRIENDLY/NEUTRAL-SC/aNSC einen	anderen	besiegt

	VAR	STRING	Awake			;			// NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, r�keln)

// Gr��e
	VAR	STRING	FriendlyGreetings;			// 1. Am Anfang	eines Dialoges, wenn NSC FRIENDLY/NEUTRAL zum SC,  2. Wenn sie sich unterwegs begegnen.
	VAR	STRING	ALGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC aus Altem Lager und FRIENDLY/NEUTRAL ('F�r Gomez'), 2. Wenn sie sich unterwegs begegnen.
	var	STRING	MageGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC beide Magier und FRIENDLY/NEUTRAL, 2. Wenn sie sich unterwegs begegnen.
	VAR	STRING	SectGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC aus Psi-Camp und FRIENDLY/NEUTRAL	zum	SC ('Erwache. Der Schl�fer erwache.') 2. Wenn sie sich unterwegs begegnen.

	var string	ThereHeIs;					// NSC zeigt SC wo ein anderer NSC steht nach dem der SC gefragt hat: "Da dr�ben ist er"

// Lehrer-Kommentare
	var string	NoLearnNoPoints			;	// NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string	NoLearnOverMax			;	// NSC-Lehrer verbietet Attribut-Steigerung �ber 100
	var string	NoLearnYouAlreadyKnow	;	// Du mu�t erst Fortgeschritten sein, bevor du ein Meister werden kannst!
	var string	NoLearnYoureBetter		;	// Du bist jetzt schon besser!

// NSC spricht SC an
	VAR	STRING	HeyYou;						// z.B. Wache, die den SC im R�umen erwischt, wo er nicht hin darf sagt HeyYou, und geht dann zum SC

// NSC will nicht reden
	VAR	STRING	NotNow;						// NSC / Babe wird vom SC angesprochen,	lehnt aber ein Gespr�ch	ab.

// SC zu nah
	VAR	STRING	WhatDoYouWant;				// SC r�ckt NSC zu dicht auf die Pelle -> "Kann ich was f�r Dich tun?"
	VAR	STRING	ISaidWhatDoYouWant;			// NSC hat $WhatDoYouWant gesagt, aber der SC hat nicht reagiert -> "Was willst Du?"
// SC im Weg
	VAR	STRING	MakeWay;					// SC steht	schw�cherem NSC im Weg	-> Aufforderung, Platz zu	machen
	VAR	STRING	OutOfMyWay;					// SC steht st�rkerem NSC (Magier, Erzbaron) im Weg -> aggressive Aufforderung, Platz zu machen
	VAR	STRING	YouDeafOrWhat;				// SC folgt	nicht der Aufforderung des st�rkeren NSCs	-> letzte Warnung, danach Angriff

// SC spricht NSC an, der ihn besiegt hat
	VAR	STRING	LookingForTroubleAgain;		//Erster Satz eines Dialoges, nachdem der NSC und der SC gek�mpft haben (entweder wurde der SC besiegt oder es gab keinen klaren Ausgang des Kampfes)

// NSC ist schw�cher...
	var string	LookAway;					// Eingesch�chterter NSC guckt weg bei bedrohlichen Situationen
	VAR	STRING	OkayKeepIt;					// SC tr�gt	Waffe des sch�cheren NSCs -> NSCs verlangt die Waffe zur�ck	($GiveItToMe) -> SC	bedroht	NSC	-> ("Okay, okay, du	kannst das Ding	behalten..." zur�ckweichen)
	VAR	STRING	WhatsThat;					// Verwandelter SC wird vor den Augen des NSCs wieder zum Menschen (Erschreckter Ausruf) Nsc wird aus dem MagicSleep wieder wach und wundert sich...

	VAR	STRING	ThatsMyWeapon;				// SC tr�gt	eine Waffe,	die	dem	NSC	geh�rt -> Folge: ZS_GetBackBelongings
	VAR	STRING	GiveItToMe;					// 1. SC tr�gt Waffe des NSCs -> NSC ist schw�cher (also kein Kampf) ->	"Gib sie mir wieder"
	VAR	STRING	YouCanKeeptheCrap;			// 1. SC tr�gt Waffe des schw�cheren NSCs ->	NSCs verlangt die Waffe	zur�ck ($GiveItToMe) ->	SC geht	einfach	weg	-> ("Behalt	das	Schei�-Ding	doch!)
											// 2. NSC will ein Item	aufheben und wird von einem	st�rkeren NSC gewarnt, der das auch	tun	will ->	unser NSC weicht zur�ck

	VAR	STRING	TheyKilledMyFriend;			// NSC T�ter - NSC zu Opfer freundlich, zu T�ter freundlich oder neutral

	var	string	YouDisturbedMySlumber;		// NSC wurde vom SC	mittelsanft	aus	dem	Schlaf gerissen	(z.B. durch	Ansprechen)

// Angry NSCs kommentieren SC-Aktionen
	VAR	STRING	SuckerGotSome;				// Angry NSC hat geh�rt, da� der SC umgehauen wurde. "Das Dich jemand umgehauen hat, geschieht Dir Recht!"

	VAR	STRING	SuckerDefeatedEBr;			// Du hast einen	EBR	besiegt. Er war wirklich beeindruckt!
	VAR	STRING	SuckerDefeatedGur;			// Du hast einen	GUR	niedergeschlagen,	Du bist	ein	toter Mann
	VAR	STRING	SuckerDefeatedMage;			// (News) - im Stil von SuckerDefeatedXY

	var string	SuckerDefeatedNOV_Guard;	// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist ANGRY zu Spieler
	var string	SuckerDefeatedVLK_Guard;	// Der Spieler hat einen Sch�tzling der Wache niedergeschlagen
	var string	YouDefeatedMyComrade;		// Wache stellt fest, das sie gesehen/geh�rt hat, da� ich eine andere Wache umgehauen habe
	var string	YouDefeatedNOV_Guard;		// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist NEUTRAL/FRIENDLY zu Spieler
	var string	YouDefeatedVLK_Guard;		// Der Spieler hat einen Buddler umgehauen, Wache spricht den Spieler an, Wache ist NEUTRAL/FRIENDLY zu Spieler
	VAR	STRING	YouStoleFromMe;				// Du Sau hast mich beklaut

//Wichtige Person (Lehrer, Auftraggeber?), hat davon geh�rt, da� Du Mist gebaut hat...
// FIXME: damit das so benutzt werden kann m�ssen noch Anpassungen in der B_ReactToMemory.d gemacht werden
	VAR	STRING	YouStoleFromUs;				// eigene oder befreundete Gilde beklaut.
	VAR	STRING	YouStoleFromEBr;			// Erzbarone beklaut.
	VAR	STRING	YouStoleFromGur;			// Gurus beklaut.
	VAR	STRING	StoleFromMage;				// Magier beklaut.

	VAR	STRING	YouKilledMyFriend;			// jemand aus eigener oder befreundeter Gilde get�tet
	var	STRING	YouKilledEBr;				// Erzbaron get�tet
	VAR	STRING	YouKilledGur;				// Guru get�tet
	VAR	STRING	YouKilledMage;				// Guru get�tet

	VAR	STRING	YouKilledOCfolk;			// Gardist, Schatten oder Buddler get�tet.
	VAR	STRING	YouKilledNCfolk;			// S�ldner, Organisator, Sch�rfer oder Bauer get�tet
	VAR	STRING	YouKilledPSIfolk;			// Templer oder Novize get�tet

	VAR	STRING	GetThingsRight;				//SC hat Mist gebaut. NSC sagt, "Das wieder hinzubiegen wird nicht einfach!"

	VAR	STRING	YouDefeatedMeWell;			//Zu SC	freundlich/neutral:	Du hast	mich ganz sch�n	gepl�ttet

// Ambient-Unterhaltungen zwischen zwei NSCs (gemurmelte Wortfetzen, die zuf�llig zu "Dialogen" zusammengew�rfelt werden...
	VAR	STRING	Smalltalk01;				// ...wenn Du meinst...
	VAR	STRING	Smalltalk02;				// ...kann schon sein...
	VAR	STRING	Smalltalk03;				// ...war nicht besonders schlau....
	VAR	STRING	Smalltalk04;				// ...ich halt mich da lieber raus...
	VAR	STRING	Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	VAR	STRING	Smalltalk06;				// ...war doch klar, da� das �rger gibt...
	VAR	STRING	Smalltalk07;				// ...aber behalt's f�r Dich, mu� nicht gleich jeder wissen...
	VAR	STRING	Smalltalk08;				// ...das passiert mir nicht nochmal...
	VAR	STRING	Smalltalk09;				// ...an der Gechichte mu� wohl doch was dran sein...
	VAR	STRING	Smalltalk10;				// ...man mu� eben aufpassen was man rumerz�hlt...
	VAR	STRING	Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	VAR	STRING	Smalltalk12;				// ...man darf auch nicht alles glauben, was man h�rt...
	VAR	STRING	Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	VAR	STRING	Smalltalk14;				// ...immer wieder die selbe Leier...
	VAR	STRING	Smalltalk15;				// ...manche lernen eben garnichts dazu...
	VAR	STRING	Smalltalk16;				// ...fr�her w�re das ganz anders gelaufen...
	VAR	STRING	Smalltalk17;				// ...gequatscht wird viel...
	VAR	STRING	Smalltalk18;				// ...ich h�r nicht mehr auf das Gefasel...
	VAR	STRING	Smalltalk19;				// ...verla� Dich auf jemanden und Du bist verlassen, das ist eben so...
	VAR	STRING	Smalltalk20;				// ...ich glaube kaum, da� sich daran was �ndern wird...
	VAR	STRING	Smalltalk21;				// ...wahrscheinlich hast Du recht...
	VAR	STRING	Smalltalk22;				// ...erstmal abwarten. Es wird nichts so hei� gegessen, wie es gekocht wird...
	VAR	STRING	Smalltalk23;				// ...ich dachte, das w�re schon lange gekl�rt, aber das ist wohl nicht so...
	VAR	STRING	Smalltalk24;				// ...la� uns lieber �ber was anderes reden...
	VAR	STRING	Om;							// Ommm (Meditation)

// SC Dialog
	var string	SC_HeyTurnAround;			//SC: Hey du! (Nsc ansprechen, steht mit R�cken zu dir)                                   
	var string	SC_HeyWaitASecond;			//SC: Warte mal! (Nsc im vorgeigehen anhalten)                                            
	var string DoesntWork;				
	var string PickBroke;				
	var string NeedKey;					
	var string NoMorePicks;				
	var string InvFull;					

};


instance SVM_0 (C_SVM)				// wird nur intern gebraucht...
{

};


// ********************************
// 		Die SVM-Instanzen		(ToDo: News noch �berarbeiten wie in Prototypen)
// ********************************

// Die einzelnen Instanzen der SVMs
// Diese m�ssen	immer "SVM_x" heissen, wobei x die VoiceNummer ist.

instance SVM_1 (C_SVM)	//Malocher (Volk, Sch�rfer)	N�rgler, Alkoholiker, schimpft �ber	alles - zieht Kraft aus seinem Hass

{
	StopMagic					=	"SVM_1_StopMagic"					;//H�r auf mit dieser Magie-Schei�e!
	ISaidStopMagic				=	"SVM_1_ISaidStopMagic"				;//Willst du Schl�ge? H�r sofort damit auf!!!
	WeaponDown					=	"SVM_1_WeaponDown"					;//Steck die Waffe weg!
	ISaidWeaponDown				=	"SVM_1_ISaidWeaponDown"				;//Steck endlich die Schei�waffe weg!!
	WatchYourAim				=	"SVM_1_WatchYourAim"				;//Nimm das Ding runter!!
	WatchYourAimAngry			=	"SVM_1_WatchYourAimAngry"			;//Wenn du eine aufs Maul willst, ziel ruhig weiter auf mich!
	WhatAreYouDoing				=	"SVM_1_WhatAreYouDoing"				;//Pass auf! Noch mal und ich verpass dir eine.
	LetsForgetOurLittleFight	=	"SVM_1_LetsForgetOurLittleFight"	;//Lass uns den kleinen Streit vergessen, okay?
	Strange						=	"SVM_1_Strange"						;//Komm raus, du Dreckskerl!
	DieMonster					=	"SVM_1_DieMonster"					;//Verdammtes Drecksvieh!
	DieMortalEnemy				=	"SVM_1_DieMortalEnemy"				;//Jetzt musst du dran glauben!
	NowWait						=	"SVM_1_NowWait"						;//Jetzt gibt's was aufs Maul ...
	YouStillNotHaveEnough		=	"SVM_1_YouStillNotHaveEnough"		;//Du willst wohl noch eine aufs Maul!
	YouAskedForIt				=	"SVM_1_YouAskedForIt"				;//Du wolltest so es so haben!
	NowWaitIntruder				= 	"SVM_1_NowWaitIntruder"				;//Jetzt sorg ich daf�r, dass du in Einzelteilen hier weggeschafft wirst!
	IWillTeachYouRespectForForeignProperty	=	"SVM_1_IWillTeachYouRespectForForeignProperty"	;//Ich habe dich gewarnt, die Drecksfinger von meinen Sachen zu lassen!
	DirtyThief					=	"SVM_1_DirtyThief"					;//Ich mach dich fertig, du Dieb!
	YouAttackedMyCharge			=	"SVM_1_YouAttackedMyCharge"			;//Niemand vergreift sich an meinen Kumpels!
	YouKilledOneOfUs			=	"SVM_1_YouKilledOneOfUs"			;//Du hast einen von uns platt gemacht. Jetzt mach' ich DICH platt!
	Dead						=	"SVM_1_Dead"						;//Aaaaaargl!
	Aargh_1						=	"SVM_1_Aargh_1"						;//Aargh
	Aargh_2						=	"SVM_1_Aargh_2"						;//Aargh
	Aargh_3						=	"SVM_1_Aargh_3"						;//Aargh
	Berzerk						=	"SVM_1_Berzerk"						;//UUAAARRGGGHHH!!!
	YoullBeSorryForThis			=	"SVM_1_YoullBeSorryForThis"			;//Das wird dir noch Leid tun!
	YesYes						=	"SVM_1_YesYes"						;//Keine Panik! Hast gewonnen!
	ShitWhatAMonster			=	"SVM_1_ShitWhatAMonster"			;//Schei�e! Nichts wie weg!
	Help						=	"SVM_1_Help"						;//Verdammt!
	WeWillMeetAgain				=	"SVM_1_WeWillMeetAgain"				;//Wir sehen uns wieder!
	NeverTryThatAgain			=	"SVM_1_NeverTryThatAgain"			;//Noch einmal und du kannst was erleben.
	ITakeYourWeapon				=	"SVM_1_ITakeYourWeapon"				;//Nette Waffe! Her damit!
	ITookYourOre				=	"SVM_1_ITookYourOre"				;//Danke f�r das Erz, du Held!
	ShitNoOre					=	"SVM_1_ShitNoOre"					;//Du arme Wurst, hast ja nicht mal Erz dabei!
	HandsOff					=	"SVM_1_HandsOff"					;//Flossen weg!
	GetOutOfHere				=	"SVM_1_GetOutOfHere"				;//Verschwinde hier!
	YouViolatedForbiddenTerritory=	"SVM_1_YouViolatedForbiddenTerritory";//Hey! Wie kommst du hier rein?
	YouWannaFoolMe				=	"SVM_1_YouWannaFoolMe"				;//Du glaubst wohl, ich bin bescheuert!
	WhatsThisSupposedToBe		=	"SVM_1_WhatsThisSupposedToBe"		;//Hey du! Was schleichst du da rum.
	WhyAreYouInHere				=	"SVM_1_WhyYouAreInHere"				;//Raus aus meiner H�tte oder ich ruf die Wachen!
	WhatDidYouInThere			=	"SVM_1_WhatDidYouInThere"			;//Du hast da drinnen nichts verloren! Verschwinde!
	WiseMove					=	"SVM_1_WiseMove"					;//Kluges Kerlchen!
	Alarm						=	"SVM_1_Alarm"						;//Wachen! Hierher!
	IntruderAlert				= 	"SVM_1_IntruderAlert"				;//ALARM!!! EINDRINGLING!!!
	BehindYou					=	"SVM_1_BehindYou"					;//Hinter dir!
	TheresAFight				=	"SVM_1_TheresAFight"				;//Ah, ein Kampf!
	HeyHeyHey					=	"SVM_1_HeyHeyHey"					;//Fester!
	CheerFight					=	"SVM_1_CheerFight"					;//Ihr k�mpft wie Frauen!
	CheerFriend					=	"SVM_1_CheerFriend"					;//Mach ihn alle!!
	Ooh							=	"SVM_1_Ooh"							;//Schlag doch zur�ck!
	YeahWellDone				=	"SVM_1_YeahWellDone"				;//Gib's ihm!
	RunCoward					=	"SVM_1_RunCoward"					;//Komm zur�ck, du Feigling!
	HeDefeatedHim				=	"SVM_1_HeDefeatedHim"				;//Der hat genug!
	HeDeservedIt				=	"SVM_1_HeDeservedIt"				;//Geschieht ihm recht!
	HeKilledHim					=	"SVM_1_HeKilledHim"					;//Warum hast du ihn kaltgemacht? Du bist so gut wie tot!
	ItWasAGoodFight				=	"SVM_1_ItWasAGoodFight"				;//Sch�ner Kampf!
	Awake						=	"SVM_1_Awake"						;//G����hn
	FriendlyGreetings			=	"SVM_1_FriendlyGreetings"			;//Hallo
	ALGreetings					=	"SVM_1_ALGreetings"					;//F�r Gomez!
	MageGreetings				=	"SVM_1_MageGreetings"				;//Magie zu Ehren!
	SectGreetings				=	"SVM_1_SectGreetings"				;//Erwache!
	ThereHeIs					= 	"SVM_1_ThereHeIs"					;//Da dr�ben ist er.
	NoLearnNoPoints				= 	"SVM_1_NoLearnNoPoints"				;//Komm wieder, wenn du mehr Erfahrung hast.
	NoLearnOverMax				= 	"SVM_1_NoLearnOverMax"				;//Du bist am Ende deiner M�glichkeiten. Du solltest etwas anderes lernen.
	NoLearnYouAlreadyKnow		=	"SVM_1_NoLearnYouAlreadyKnow"		;//Du musst erst fortgeschritten sein, bevor du Meister werden kannst!
	NoLearnYoureBetter			=	"SVM_1_NoLearnYoureBetter"			;//Du bist jetzt schon besser!
	HeyYou						=	"SVM_1_HeyYou"						;//Hey, du!
	NotNow						=	"SVM_1_NotNow"						;//Nicht jetzt!
	WhatDoYouWant				=	"SVM_1_WhatDoYouWant"				;//Was willst du?
	ISaidWhatDoYouWant			=	"SVM_1_ISaidWhatDoYouWant"			;//Kann ich irgendwas f�r dich tun?!
	MakeWay						=	"SVM_1_MakeWay"						;//Lass mich mal vorbei!
	OutOfMyWay					=	"SVM_1_OutOfMyWay"					;//Mach endlich Platz, Mann!
	YouDeafOrWhat				=	"SVM_1_YouDeafOrWhat"				;//Bist du taub? WEG DA!!
	LookingForTroubleAgain		=	"SVM_1_LookingForTroubleAgain"		;//Suchst du wieder Streit?
	LookAway					=	"SVM_1_LookAway"					;//���h! Ich hab nichts gesehen!
	OkayKeepIt					=	"SVM_1_OkayKeepIt"					;//Okay, Okay! Behalt es einfach!
	WhatsThat					=	"SVM_1_WhatsThat"					;//Was war das denn?
	ThatsMyWeapon				=	"SVM_1_ThatsMyWeapon"				;//Du rennst mit MEINER Waffe rum!
	GiveItToMe					=	"SVM_1_GiveItToMe"					;//Her mit dem Ding!
	YouCanKeeptheCrap			=	"SVM_1_YouCanKeeptheCrap"			;//Dann behalt es eben! Ich brauch es sowieso nicht!
	TheyKilledMyFriend			=	"SVM_1_TheyKilledMyFriend"			;//Sie haben einen von unseren Leuten umgebracht. Wenn ich das Schwein kriege ...
	YouDisturbedMySlumber		=	"SVM_1_YouDisturbedMySlumber"		;//Verdammt, warum weckst du mich?
	SuckerGotSome				=	"SVM_1_SuckerGotSome"				;//Haste was aufs Maul gekriegt? Geschieht dir recht!
	SuckerDefeatedEBr			=	"SVM_1_SuckerDefeatedEBr"			;//Du hast einen Erzbaron umgehauen. Er ist so richtig w�tend!
	SuckerDefeatedGur			=	"SVM_1_SuckerDefeatedGur"			;//Du hast einen Guru niedergeschlagen. Irgendwie ziehst du �rger an!
	SuckerDefeatedMage			=	"SVM_1_SuckerDefeatedMage"			;//Einen Magier zu besiegen ist 'ne wirklich beschissene Idee!
	SuckerDefeatedNov_Guard		= 	"SVM_1_SuckerDefeatedNov_Guard"		;//Du kannst hier nicht rumrennen und die Novizen verpr�geln!
	SuckerDefeatedVlk_Guard		= 	"SVM_1_SuckerDefeatedVlk_Guard"		;//Lass die Finger von meinen Jungs!
	YouDefeatedMyComrade		=	"SVM_1_YouDefeatedMyComrade"		;//Du hast einen Kumpel von mir umgehauen ...
	YouDefeatedNOV_Guard		=	"SVM_1_YouDefeatedNOV_Guard"		;//Das l�uft nicht, dass du hier Unruhe stiftest!
	YouDefeatedVLK_Guard		=	"SVM_1_YouDefeatedVLK_Guard"		;//Wenn du jemanden verpr�gelst, der unter meinem Schutz steht, hat das Konsequenzen!
	YouStoleFromMe				=	"SVM_1_YouStoleFromMe"				;//Du Arsch hast mich beklaut! Versuch das nicht noch mal!
	YouStoleFromUs				=	"SVM_1_YouStoleFromUs"				;//Wir wollen unsere Sachen wiederhaben! Lass sehen!
	YouStoleFromEBr				=	"SVM_1_YouStoleFromEBr"				;//Du hast die Erzbarone beklaut! Was soll der Schei�?
	YouStoleFromGur				=	"SVM_1_YouStoleFromGur"				;//Du hast die Gurus beklaut? Dumm nur, dass es rausgekommen ist!
	StoleFromMage				=	"SVM_1_StoleFromMage"				;//Du hast die Magier beklaut! Eine echt d�mliche Idee!
	YouKilledMyFriend			=	"SVM_1_YouKilledMyFriend"			;//Einer unserer eigenen Leute hat ins Gras gebissen und du hast damit zu tun! Der kleinste Fehler noch und du bist Freiwild!
	YouKilledEBr				=	"SVM_1_YouKilledEBr"				;//Du hast einen Erzbaron umgelegt! Mann, du bist wohl komplett durchgedreht!?
	YouKilledGur				=	"SVM_1_YouKilledGur"				;//Du hast einen Guru get�tet! Junge, das kann doch nicht wahr sein!
	YouKilledMage				=	"SVM_1_YouKilledMage"				;//Du hast einen Magier umgebracht! Wie sollen wir das denn erkl�ren?
	YouKilledOCfolk				=	"SVM_1_YouKilledOCfolk"				;//Jemand aus dem Alten Lager ist verstorben und dein Name wird dabei erw�hnt ...
	YouKilledNCfolk				=	"SVM_1_YouKilledNCfolk"				;//Das Neue Lager hat einen tragischen Verlust erlitten, und scheinbar hast du damit zu tun!
	YouKilledPSIfolk			=	"SVM_1_YouKilledPSIfolk"			;//Die Bruderschaft ist um einen Anh�nger �rmer und wie es scheint, warst du das!
	GetThingsRight				=	"SVM_1_GetThingsRight"				;//Das wieder hinzubiegen wird nicht einfach!
	YouDefeatedMeWell			=	"SVM_1_YouDefeatedMeWell"			;//War ein guter Kampf. Du hast mir ganz sch�n aufs Maul gehauen, Mann!
	Smalltalk01					=	"SVM_1_Smalltalk01"					;// ... der letzte Schei� ...
	Smalltalk02					=	"SVM_1_Smalltalk02"					;// ... kann schon sein, aber wen interessiert das? ...
	Smalltalk03					=	"SVM_1_Smalltalk03"					;// ... absolut idiotisch ...
	Smalltalk04					=	"SVM_1_Smalltalk04"					;// ... ich halt mich da lieber raus ...
	Smalltalk05					=	"SVM_1_Smalltalk05"					;// ... das ist wirklich nicht mein Problem ...
	Smalltalk06					=	"SVM_1_Smalltalk06"					;// ... war doch klar, dass das �rger gibt ...
	Smalltalk07					=	"SVM_1_Smalltalk07"					;// ... warum passiert so was immer wieder? ...
	Smalltalk08					=	"SVM_1_Smalltalk08"					;// ... das passiert mir nicht noch mal ...
	Smalltalk09					=	"SVM_1_Smalltalk09"					;// ... an der Geschichte muss doch wohl was dran sein ...
	Smalltalk10					=	"SVM_1_Smalltalk10"					;// ... nicht so viel quatschen, ja, ja ...
	Smalltalk11					=	"SVM_1_Smalltalk11"					;// ... so lange ich nichts damit zu tun habe ...
	Smalltalk12					=	"SVM_1_Smalltalk12"					;// ... man darf auch nicht alles glauben ...
	Smalltalk13					=	"SVM_1_Smalltalk13"					;// ... in seiner Haut will ich trotzdem nicht stecken ...
	Smalltalk14					=	"SVM_1_Smalltalk14"					;// ... immer wieder dieselbe Leier ...
	Smalltalk15					=	"SVM_1_Smalltalk15"					;// ... manche lernen eben gar nichts dazu ...
	Smalltalk16					=	"SVM_1_Smalltalk16"					;// ... fr�her w�re das ganz anders gelaufen ...
	Smalltalk17					=	"SVM_1_Smalltalk17"					;// ... gequatscht wird viel ...
	Smalltalk18					=	"SVM_1_Smalltalk18"					;// ... ich h�r' nicht mehr auf das Gefasel ...
	Smalltalk19					=	"SVM_1_Smalltalk19"					;// ... verlass dich auf jemanden und du bist verlassen, das ist eben so ...
	Smalltalk20					=	"SVM_1_Smalltalk20"					;// ... ich glaube kaum, dass sich daran was �ndern wird ...
	Smalltalk21					=	"SVM_1_Smalltalk21"					;// ... wahrscheinlich hast du Recht ...
	Smalltalk22					=	"SVM_1_Smalltalk22"					;// ... erst mal abwarten. Es wird nichts so hei� gegessen, wie es gekocht wird ...
	Smalltalk23					=	"SVM_1_Smalltalk23"					;// ... ich dachte, das w�re schon lange gekl�rt ...
	Smalltalk24					=	"SVM_1_Smalltalk24"					;// ... lass uns lieber �ber was anderes reden ...
	Om							= 	"SVM_1_Om"							;// Ommm
};


//////////////////////////////////////////
INSTANCE SVM_15	(C_SVM)		//	PLAYER	trocken,ernst
{
	SC_HeyTurnAround		= 	"SVM_15_SC_HeyTurnAround"			;//Hey du!
	SC_HeyWaitASecond		= 	"SVM_15_SC_HeyWaitASecond"			;//Warte mal!

	SectGreetings			=	"SVM_15_SectGreetings"				;//Erwache!
	ALGreetings				=	"SVM_15_ALGreetings"				;//F�r Gomez!
	MageGreetings			=	"SVM_15_MageGreetings"				;//Sei gegr��t!
	FriendlyGreetings		=	"SVM_15_FriendlyGreetings"			;//Hi!
	Aargh_1					=	"SVM_15_Aargh_1"					;//Aargh
	Aargh_2					=	"SVM_15_Aargh_2"					;//Aargh
	Aargh_3					=	"SVM_15_Aargh_3"					;//Aargh
	Dead					=	"SVM_15_Dead"						;//Aaargl
	Awake					=	"SVM_15_Awake"						;//
	DoesntWork				= 	"SVM_15_DoesntWork"					;//Funktioniert nicht
	PickBroke				= 	"SVM_15_PickBroke"					;// Hm, abgebrochen.
	NeedKey					= 	"SVM_15_NeedKey"					;// Daf�r brauch' ich den Schl�ssel ...
	NoMorePicks				= 	"SVM_15_NoMorePicks"				;// Keine Dietriche mehr ...
	InvFull					= 	"SVM_15_InvFull"					;// Mehr kann ich nicht tragen.
};



// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	16;




