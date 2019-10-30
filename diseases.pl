check:-
checkfor(Disease1),
write('i believe you have '),
write(Disease1),
nl,

undo.

checkfor(cancer) :- cancer.
checkfor(thyroid) :- thyroid.
checkfor(high_blood_pressure) :- high_blood_pressure.
checkfor(brain_tumor) :- brain_tumor.
checkfor(acidity) :- acidity.

checkfor(diabetes) :- diabetes.
checkfor(typhoid) :- typhoid.
checkfor(swine_flu) :- swine_flu.
checkfor(dengue) :- dengue.
checkfor(jaundice) :- jaundice.


jaundice:-
        checksymptom(fever),
        checksymptom(pale_stool),
        checksymptom(dark_urine),
        checksymptom(ichiness),
		checksymptom(vomiting),
		checksymptom(abdominal_pain).


dengue:-
        checksymptom(high_fever),
        checksymptom(severe_headache),
		checksymptom(pain_behind_the_eyes),
		checksymptom(fatigue),
		checksymptom(nausea),
		checksymptom(vomiting).

swine_flu:-
        checksymptom(fever),
        checksymptom(headache),
        checksymptom(chills),
		checksymptom(cough),
		checksymptom(sore_throat),
		checksymptom(runny_nose),
		checksymptom(watery_red_eyes),
		checksymptom(diarrhea),
        checksymptom(nausea).
		
typhoid:- 
        checksymptom(fever),
        checksymptom(poor_appetite),
        checksymptom(headaches),
        checksymptom(lethargy),
        nl.

diabetes :-
        
        checksymptom(urinating_often),
        checksymptom(feel_very_thirsty),
        checksymptom(feel_very_hungry),
        checksymptom(extreme_fatigue),
        checksymptom(blurry_vision),
        checksymptom(cuts_that_are_slow_to_heal),
        checksymptom(weight_loss),
        checksymptom(pain_in_hands_or_feet),
        nl.    

cancer :-
		checksymptom(fever),
		checksymptom(fatigue),
		checksymptom(skin_changes),
		checksymptom(sores_that_do_not_heal),
		checksymptom(hoarseness),
		checksymptom(blood_in_urine),
		checksymptom(swollen_glands),
		checksymptom(indigestion),
		checksymptom(unexpected_weight_loss),
		checksymptom(night_sweats),
		checksymptom(itchiness),
		nl.

acidity :-
        checksymptom(burning_sensation_in_stomach),
        checksymptom(burning_sensation_in_throat_and_heart),
        checksymptom(difficulty_in_swallowing),
        checksymptom(restlessness),
        checksymptom(belching),
        checksymptom(nausea),
        checksymptom(prolonged_sour_taste_in_mouth),
        nl. 
		
		
brain_tumor :-
        checksymptom(extreme_headaches),
        checksymptom(seizures),
        checksymptom(personality_or_memory_changes),
        checksymptom(nausea),
        checksymptom(fatigue),
        checksymptom(drowsiness),
        checksymptom(sleep_problems),
        checksymptom(memory_problems),
        nl.  
		
		
high_blood_pressure :-
        checksymptom(extreme_headaches),
        checksymptom(vision_problems),
        checksymptom(chest_pain),
        checksymptom(difficulty_in_breathing),
        checksymptom(fatigue),
        checksymptom(irregular_heartbeat),
        checksymptom(blood_in_urine),
        nl.  
		


thyroid :-
        checksymptom(feeling_tired),
        checksymptom(gaining_weight),
        checksymptom(feeling_cold),
        checksymptom(hair_loss),
        checksymptom(itchy_and_dry_skin),
        checksymptom(depressed),
        checksymptom(trouble_concentrating),
        nl. 
		
		
askQuestion(Question):-
write('do you have the symptom '),
write(Question),
write('?'),
read(Reply),
nl,
( (Reply == yes ; Reply == y)
->
assert(yes(Question));
assert(no(Question)),fail).

:-dynamic yes/1,no/1.

checksymptom(S):-
(yes(S)
->
true;
(no(S)
->
fail;
askQuestion(S))).

undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.
