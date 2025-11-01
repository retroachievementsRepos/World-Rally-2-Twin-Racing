// World Rally 2: Twin Racing
// #ID = 27017

// $022053: [8bit] Play mode 1 or 2 windows
//          
//          0xdd = 1 window
//          0xfd = 2 windows



// $022054: [8bit] Frames, 60 FPS, it goes from 0x00 to 0x3b
//function frames60FpsItGoesFrom0x00To0x3b() => byte(0x022054)

// $02212C: [8bit] Car selected
//          
//          0x00 = Ford Escort RS Cosworth
//          0x01 = Subaru Impreza WRC
//          0x02 = Toyota Celica GT-Four ST185
function getCarSelected() => byte(0x02212C)

function isFordSelected(){
    return byte(0x02212C) == 0x00
}

function isSubaruSelected(){
    return byte(0x02212C) == 0x01
}

function isToyotaSelected(){
    return byte(0x02212C) == 0x02
}

// $022136: [8bit] Rally/Difficulty
//          
//          Easy = 0x00 (Rallye Portugal)
//          Medium = 0x01 (Rallye Safari)
//          Hard = 0x02 (Tour de Corse)
//          Expert = 0x03 (Rac Rally)
function getRallyDifficulty() => byte(0x022136)

function isPlayingRallyPortugal(){
    return byte(0x022136) == 0x00
}

function isPlayingRallySafari(){
    return byte(0x022136) == 0x01
}

function isPlayingTourDeCorse(){
    return byte(0x022136) == 0x02
}

function isPlayingRallyRAC(){
    return byte(0x022136) == 0x03
}

// $02213A: [8bit] Game screens
//          
//          0x00 = Menues before push 1p button (only in fresh starts)
//          0x03 = Pick car menu
//          0x04 = Rest of the game
//          
//          Stays in 0x04 until 1p button is pressed
//function gameScreens() => byte(0x02213A)

// $0221A4: [8bit] Difficulty mode (core settings)
//          
//          0x00 = Easy
//          0x14 = Normal
//          0x28 = Hard
//          0x3c = Hardest
function getDifficultyModeCoreSettings() => byte(0x0221A4)

function isNormalOrHigherDifficulty() {
    return byte(0x0221A4) >= 0x14
}

// $0221A8: [8bit] Credits remaining
//          
//          0x00 = 0 Credits more remaining
//          0x01 = 1 Credit more remainning
//          ...
function getCreditsRemaining() => byte(0x0221A8)

// $0221AC: [8bit] Stage        
//          
//          Changes the value to next stage when the classification appears
function getTotalStagesCompleted() => byte(0x0221AC)

// $0242B3: [8bit] Time exhausted. Can change the value in the menus between 0x00 and 0x01. It changes from 0x00 to 0x01 in the exact moment that the chrono become inactive.
//          
//          0x00 = Time not exhausted
//          0x01 = Time exhausted (reach the max time 70.0 seconds).
function isTimeExhausted() => byte(0x0242B3)

// $0242B9: [8bit] Time exhausted. Can change the value in the menus between 0x00 and 0x01. It changes from 0x00 to 0x01 in the exact moment that the chrono become inactive.
//          
//          0x00 = Time not exhausted
//          0x01 = Time exhausted (reach the max time 70.0 seconds).
//function timeExhaustedCanChangeTheValueInTheMenusBetween0x00And0x01ItChangesFrom0x00To0x01InTheExactMomentoThatTheChronoBecomeInactive() => byte(0x0242B9)

// $024345: [8bit] Game status
//          
//          0x00 = Loading the game
//          0x11 = In the menu or playing
//          0x12 = Inserting your name after finish your play
//          0x51 = In the menu or playing after finish the first play
//          0x71 = Finish the World Championship not in First Position
//          0x72 = Finish the World Championship in First Position
function getGameStatus() => byte(0x024345)

// $026A14: [8bit] Game playing status
//
//          0x00 = Not playing
//          0x01 = Playing, after 1p button pressed
function isPlayingGame(){
    return byte(0x026A14) == 1    
} 


// $02213A: [8bit] Game screens
//
//          0x00 = Menues before push 1p button (only in fresh starts)
//          0x03 = Pick car menu
//          0x04 = Rest of the game
//
//          Stays in 0x04 until 1p button is pressed
function getGameScreen() => byte(0x02213A)

function isVictoryWorldChampionship(){
    return byte(0x024345) == 0x72
}

function isFinishedNotWinningWorldChampionship(){
    return byte(0x024345) == 0x71
}


// $026320: [8bit] Rally Portugal points
//          
//          0xff = Initial Value
//          
//          Only get points when rally is completed
function getRallyPortugalPoints() => byte(0x026320)

// $026322: [8bit] Rally Safari points
//          
//          0xff = Initial Value
//          
//          Only get points when rally is completed
function getRallySafariPoints() => byte(0x026322)

// $026324: [8bit] Tour de Corse points
//          
//          0xff = Initial Value
//          
//          Only get points when rally is completed
function getTourDeCorsePoints() => byte(0x026324)

// $026326: [8bit] Rally RAC points
//          
//          0xff = Initial Value
//          
//          Only get points when rally is completed
function getRallyRACPoints() => byte(0x026326)

// $0263A6: [8bit] Rally Portugal has been selected
//          
//          0x00 = Rally not selected yet
//          0x01 = Rally has been selected (remains 01 during all the game)
function isRallyPortugalSelected() {
    return byte(0x0263A6) == 1  
} 

// $0263A8: [8bit] Rally Safari has been selected
//          
//          0x00 = Rally not selected yet
//          0x01 = Rally has been selected (remains 01 during all the game)
function isRallySafariSelected(){
    return byte(0x0263A8) == 1
} 

// $0263AA: [8bit] Tour de Corse has been selected
//          
//          0x00 = Rally not selected yet
//          0x01 = Rally has been selected (remains 01 during all the game)
function isTourDeCorseSelected(){
    return byte(0x0263AA) == 1
}

// $0263AC: [8bit] Rally RAC has been selected
//          
//          0x00 = Rally not selected yet
//          0x01 = Rally has been selected (remains 01 during all the game)
function isRallyRACSelected(){
    return byte(0x0263AC) == 1
} 

// $0263CC: [8bit] Rally/Difficulty
//          
//          Easy = 0x00 (Rallye Portugal)
//          Medium = 0x01 (Rallye Safari)
//          Hard = 0x02 (Tour de Corse)
//          Expert = 0x03 (Rac Rally)
//function rallyDifficulty() => byte(0x0263CC)

// $0263CE: [8bit] Current Stage 
//          
//          0x00 = Stage 1
//          0x01 = Stage 2
//          0x02 = Stage 3
//          0xff = Rally selection screen
//          
//          Changes the value when the stage screen starts, in the rally screen selection is 0xFF
function getCurrentStage() => byte(0x0263CE)

// $026628: [8bit] Stage position
//          
//          0x00 = Position 1
//          0x01 = Position 2
//          0x02 = Position 3
//          ...
function getStagePosition() => byte(0x026628)

// $02662C: [8bit] Rally position
//          
//          0x00 = Position 1
//          0x01 = Position 2
//          0x02 = Position 3
//          ...
function getRallyPosition() => byte(0x02662C)

// $026634: [8bit] World Championship points
//          
//          0xff = Initial value
//          
//          Only get points when a rally is completed
function getWorldChampionshipPoints() => byte(0x026634)

// $026638: [8bit] World Championship position
//          
//          0x00 = Position number 1
//          0x01 = Position number 2
//          0x02 = Position number 3
//          ...
function getWorldChampionshipPosition() => byte(0x026638)

// $026A10: [8bit] Play mode 1 or 2 windows
//          
//          0x01 = 1 window
//          0x00 = 2 windows
function isPlayModeOnePlayerWindow() {
    return byte(0x026A10) == 0x01
}

function isPlayModeTwoPlayersWindows() {
    return byte(0x026A10) == 0x00
}

// $029D00: [8bit] Difficulty mode (core settings)
//          
//          0x00 = Easy
//          0x14 = Normal
//          0x28 = Hard
//          0x3c = Hardest
//function difficultyModeCoreSettings() => byte(0x029D00)

// $029D0E: [8bit] Frames after finish the stage, from 0x00 to 0xa8. In the 0x07 the stage position value is the final one.
function getFramesAfterFinishStage() => byte(0x029D0E)

// $029D12: [16bit] Total Score points first four digits from a 32 bits value
function getTotalScorePointsFirstFourDigits() => word(0x029D12)

// $029D14: [16bit] Total Score points last four digits from a 32 bits value
function getTotalScorePointsLastFourDigits() => word(0x029D14)


// Get current total score points 
function getScorePoints() {
    return (getTotalScorePointsFirstFourDigits() * 0xFFF) + getTotalScorePointsLastFourDigits()
}

// $029D1A: [16bit] Chrono frames
//          
//          For ex: 3339 frames = 55.65 seconds (55.6 seconds and 3 frames)
//          
//          It stays in that value until the next stage/rally
function getChronoFrames() => word(0x029D1A)

// $029D1E: [8bit] Stage chrono active
//          
//          0x00 = Chrono no active (not running)
//          0x01 = Chrono active (running the stage)
//          
//          Gets to 0x00 in the exact moment of finish the stage
function isStageChronoActive(){
    return byte(0x029D1E) == 1
}

// $029D26: [8bit] Limit Stage Chrono 60 seconds
//
//          0x00 = Not reached
//          0x01 = 60 seconds limit reached
function isLimitChronoStageReached(){
    return byte(0x029D26) == 1
}

// $029DDE: [8bit] Extra Credits used
//          
//          0x00 = No Extra Credit used
//          0x01 = 1 Extra Credit used
//          0x02 = 2 Extra Credits used
//          ...
function getExtraCreditsUsed() => byte(0x029DDE)



// Rally ASCII Time functions
function getRallyMinutesASCII() => low4(0x0262FB)
function getRallyFirstDigitSecondsASCII() => low4(0x0262FD)
function getRallySecondDigitSecondsASCII() => low4(0x0262FC)
function getRallyTenthsOfSecondASCII() => low4(0x0262FE)

// Rally time
function getCentisecRallyTime(){
    return (getRallyMinutesASCII()  * 6000) +
        (getRallyFirstDigitSecondsASCII() * 1000) +
        (getRallySecondDigitSecondsASCII() * 100) +
        (getRallyTenthsOfSecondASCII() * 10)
}

// Stage time
function getCentisecStageTime(){
    return (getChronoFrames() / 6.0) * 10
}

// Dictionary for all rallies and stages

//          0x00 = Ford Escort RS Cosworth
//          0x01 = Subaru Impreza WRC
//          0x02 = Toyota Celica GT-Four ST185

rallies = {
    0: {
        "name": "Rally Portugal",
        "leaderboard": {
            "id": 0,
            "title": "Rally Portugal",
            "description": "Leaderboard Rally Portugal with only 1 credit in one player mode, in Normal or Higher difficulty"
        },
        "completed": {
            "id": 0,
            "title": "Obrigado",
            "description": "Complete Rally Portugal, in one player mode, in Normal or Higher difficulty",
            "points": 5
        },
        "completedOneCredit": {
            0: {
                "id": 0,
                "title": "The Iberian Trial",
                "description": "Complete Rally Portugal with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "The Lusitanian Leap",
                "description": "Complete Rally Portugal with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Dust of the Douro",
                "description": "Complete Rally Portugal with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }       
        },
        "victory": {
            0: {
                "id": 0,
                "title": "Grip of Glory",
                "description": "Win Rally Portugal with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "Fado and Fury",
                "description": "Win Rally Portugal with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Roar of the Atlantic",
                "description": "Win Rally Portugal with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }
        },
        "stages": {
            0: {
                "idAchievement": 0,
                "idLeaderboard": 0,
                "name" : "Estoril",
                "stage": 1,
                "winningTitle": "Armindo Araujo",
                "winningPoints" : 2,
            },
            1: {
                "idAchievement": 0,
                "idLeaderboard": 0,    
                "name" : "Povoa",
                "stage": 2,
                "winningTitle": "Joao Ferreira",
                "winningPoints" : 3,
            },
            2: {
                "idAchievement": 0,    
                "idLeaderboard": 0, 
                "name" : "Viseu",
                "stage": 3,
                "winningTitle": "Pedro Almeida",
                "winningPoints" : 5,
            }
       }
    },
    1: {
        "name": "Rally Safari",
        "leaderboard": {
            "id": 0,
            "title": "Rally Safari",
            "description": "Leaderboard Rally Safari with only 1 credit in one player mode, in Normal or Higher difficulty"
        },
        "completed": {
            "id": 0,
            "title": "Taming the Wild",
            "description": "Complete Rally Safari, in one player mode, in Normal or Higher difficulty",
            "points": 5
        },
        "completedOneCredit": {
            0: {
                "id": 0,
                "title": "Dustborn Resolve",
                "description": "Complete Rally Safari with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "No Trail Too Rough",
                "description": "Complete Rally Safari with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Sunburned Speed",
                "description": "Complete Rally Safari with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }       
        },
        "victory": {
            0: {
                "id": 0,
                "title": "Predator's Pace",
                "description": "Win Rally Safari with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "From Rift to Victory",
                "description": "Win Rally Safari with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Savanna Sprint",
                "description": "Win Rally Safari with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }
        },
        "stages": {
            0: {
                "idAchievement": 0,
                "idLeaderboard": 0,
                "name" : "Nairobi",
                "stage": 1,
                "winningTitle": "Baldev Chager",
                "winningPoints" : 3,
            },
            1: {
                "idAchievement": 0,
                "idLeaderboard": 0,    
                "name" : "Kisumu",
                "stage": 2,
                "winningTitle": "Carl Tundo",
                "winningPoints" : 4,
            },
            2: {
                "idAchievement": 0,    
                "idLeaderboard": 0, 
                "name" : "Eldoret",
                "stage": 3,
                "winningTitle": "Ian Duncan",
                "winningPoints" : 5,
            }
       }
    },
    2: {
        "name": "Tour De Corse",
        "leaderboard": {
            "id": 0,
            "title": "Tour De Corse",
            "description": "Leaderboard Tour de Corse with only 1 credit in one player mode, in Normal or Higher difficulty"
        },
        "completed": {
            "id": 0,
            "title": "Steel Nerves, French Curves",
            "description": "Complete Tour de Corse, in one player mode, in Normal or Higher difficulty",
            "points": 5
        },
        "completedOneCredit": {
            0: {
                "id": 0,
                "title": "Serpent's Rhythm",
                "description": "Complete Tour de Corse with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "Knight of the Isle",
                "description": "Complete Tour de Corse with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Corsican Curves",
                "description": "Complete Tour de Corse with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }       
        },
        "victory": {
            0: {
                "id": 0,
                "title": "Victory in the Veins",
                "description": "Win Tour de Corse with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "Crown of the Cliffs",
                "description": "Win Tour de Corse with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "Precision Unleashed",
                "description": "Win Tour de Corse with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }
        },
        "stages": {
            0: {
                "idAchievement": 0,
                "idLeaderboard": 0,
                "name" : "Ajaccio",
                "stage": 1,
                "winningTitle": "Giles Panizzi",
                "winningPoints" : 3,
            },
            1: {
                "idAchievement": 0,
                "idLeaderboard": 0,    
                "name" : "Bastia",
                "stage": 2,
                "winningTitle": "Francois Delecour",
                "winningPoints" : 5,
            },
            2: {
                "idAchievement": 0,    
                "idLeaderboard": 0, 
                "name" : "Calvi",
                "stage": 3,
                "winningTitle": "Jean Ragnotti",
                "winningPoints" : 10,
            }
       }
    },
    3: {
        "name": "Rally RAC",
        "leaderboard": {
            "id": 0,
            "title": "Rally RAC",
            "description": "Leaderboard Rally RAC with only 1 credit in one player mode, in Normal or Higher difficulty"
        },
        "completed": {
            "id": 0,
            "title": "The Long Drive Home",
            "description": "Complete Rally RAC, in one player mode, in Normal or Higher difficulty",
            "points": 5
        },
        "completedOneCredit": {
            0: {
                "id": 0,
                "title": "The Albion Run",
                "description": "Complete Rally RAC with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            1: {
                "id": 0,
                "title": "Steel over Mud",
                "description": "Complete Rally RAC with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            },
            2: {
                "id": 0,
                "title": "The Long Chase",
                "description": "Complete Rally RAC with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 10               
            }       
        },
        "victory": {
            0: {
                "id": 0,
                "title": "Master of the Mist",
                "description": "Win Rally RAC with the Ford Escort, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 25               
            },
            1: {
                "id": 0,
                "title": "Tea and Triumph",
                "description": "Win Rally RAC with the Subaru Impreza, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 25               
            },
            2: {
                "id": 0,
                "title": "Fog and Fury",
                "description": "Win Rally RAC with the Toyota Celica, with only 1 credit in one player mode, in Normal or Higher difficulty",
                "points": 25               
            }
        },
        "stages": {
            0: {
                "idAchievement": 0,
                "idLeaderboard": 0,
                "name" : "Chester",
                "stage": 1,
                "winningTitle": "Elfyn Evans",
                "winningPoints" : 4,
            },
            1: {
                "idAchievement": 0,
                "idLeaderboard": 0,    
                "name" : "Harrogate",
                "stage": 2,
                "winningTitle": "Richard Burns",
                "winningPoints" : 5,
            },
            2: {
                "idAchievement": 0,    
                "idLeaderboard": 0, 
                "name" : "Kirkby",
                "stage": 3,
                "winningTitle": "Collin McRae",
                "winningPoints" : 10,
            }
       }
    }
}

// Lookups for Rich presence
// -------------------------
ralliesLookup = {
    0: "Rally Portugal",
    1: "Rally Safari",
    2: "Tour de Corse",
    3: "Rally RAC"
}

stagesPortugalLookup = {
    0: "Estoril",
    1: "Povoa",
    2: "Viseu"
}

stagesSafariLookup = {
    0: "Nairobi",
    1: "Kisumu",
    2: "Eldoret"
}

stagesCorseLookup = {
    0: "Ajaccio",
    1: "Bastia",
    2: "Calvi"
}

stagesRACLookup = {
    0: "Chester",
    1: "Harrogate",
    2: "Kirkby"
}





// Achievement functions
// ---------------------

// Achievement function for victory in rally stages
function setAchievementVictoryStage(rallyId, stage){
    id = rallies[rallyId]["stages"][stage]["idAchievement"]
    title = rallies[rallyId]["stages"][stage]["winningTitle"]
    points = rallies[rallyId]["stages"][stage]["winningPoints"]
    type = ""
    description = format("Win {0} Stage - {1} Stage {2} in one player mode, in Normal or Higher difficulty", 
            rallies[rallyId]["stages"][stage]["name"], 
            rallies[rallyId]["name"],
            rallies[rallyId]["stages"][stage]["stage"])
    trigger = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
                  getCurrentStage() == stage &&
                  //!isLimitChronoStageReached() &&
                  getStagePosition() == 0 &&
                  prev(getFramesAfterFinishStage() == 6) && getFramesAfterFinishStage() == 7 // At 0x07 gets the final stage position
                  
                  /*
                  repeated(25, getChronoFrames() == prev(getChronoFrames())) && // The stage position sometimes takes time to change, workaround
                  never(getChronoFrames() == 0) &&
                  never(isStageChronoActive()) &&
                  never(getCurrentStage() != prev(getCurrentStage())) // To avoid triggers the next stage cheevo in classification screen
                  */
                                    
    if(rallyId == 0){
        trigger = trigger && isRallyPortugalSelected() && isPlayingRallyPortugal()
    }
    else if (rallyId == 1){
        trigger = trigger && isRallySafariSelected() && isPlayingRallySafari()
    }
    else if (rallyId == 2){
        trigger = trigger && isTourDeCorseSelected() && isPlayingTourDeCorse()
    }
    else if (rallyId == 3){
        trigger = trigger && isRallyRACSelected() && isPlayingRallyRAC()
    }
    else {}
    
    achievement(id=id, title=title, points=points, type=type, description=description, trigger=trigger)
}

// Achievement function for completed rallies
function setAchievementCompleteRally(rallyId, isExtraCreditsAllowed, carId){
    trigger = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
              getWorldChampionshipPoints() != 0xFF
              
    if !isExtraCreditsAllowed {        
        trigger = trigger && getExtraCreditsUsed() == 0
    }
     
              
    if(rallyId == 0){
        trigger = trigger && isRallyPortugalSelected() && getRallyPortugalPoints() != 0xFF && prev(getRallyPortugalPoints()) == 0xFF 
    }
    else if (rallyId == 1){
        trigger = trigger && isRallySafariSelected() && getRallySafariPoints() != 0xFF && prev(getRallySafariPoints()) == 0xFF 
    }
    else if (rallyId == 2){
        trigger = trigger && isTourDeCorseSelected() && getTourDeCorsePoints() != 0xFF && prev(getTourDeCorsePoints()) == 0xFF 
    }
    else if (rallyId == 3){
        trigger = trigger && isRallyRACSelected() && getRallyRACPoints() != 0xFF && prev(getRallyRACPoints()) == 0xFF 
    }
    else {}
    
    
    if isExtraCreditsAllowed {    
        achievement(id = rallies[rallyId]["completed"]["id"], 
                    title = rallies[rallyId]["completed"]["title"],
                    points = rallies[rallyId]["completed"]["points"],
                    type="progression",
                    description = rallies[rallyId]["completed"]["description"],
                    trigger = trigger)
    }
    else {
        achievement(id = rallies[rallyId]["completedOneCredit"][carId]["id"], 
                    title = rallies[rallyId]["completedOneCredit"][carId]["title"],
                    points = rallies[rallyId]["completedOneCredit"][carId]["points"],
                    type="",
                    description = rallies[rallyId]["completedOneCredit"][carId]["description"],
                    trigger = trigger && getCarSelected() == carId)
    }
}

// Achievement function for victory in rallies
function setAchievementVictoryRally(rallyId, carId){
    trigger = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
              getExtraCreditsUsed() == 0 && getWorldChampionshipPoints() >= 20                   
              
    if(rallyId == 0){
        trigger = trigger && isRallyPortugalSelected() && getRallyPortugalPoints() == 20 && prev(getRallyPortugalPoints()) == 0xFF 
    }
    else if (rallyId == 1){
        trigger = trigger && isRallySafariSelected() && getRallySafariPoints() == 20 && prev(getRallySafariPoints()) == 0xFF 
    }
    else if (rallyId == 2){
        trigger = trigger && isTourDeCorseSelected() && getTourDeCorsePoints() == 20 && prev(getTourDeCorsePoints()) == 0xFF 
    }
    else if (rallyId == 3){
        trigger = trigger && isRallyRACSelected() && getRallyRACPoints() == 20 && prev(getRallyRACPoints()) == 0xFF 
    }
    else {}
    
    
    achievement(id = rallies[rallyId]["victory"][carId]["id"], 
                title = rallies[rallyId]["victory"][carId]["title"],
                points = rallies[rallyId]["victory"][carId]["points"],
                type= "",
                description = rallies[rallyId]["victory"][carId]["description"],
                trigger = trigger && getCarSelected() == carId)
}




// Achievement function for game completed
function setGameCompletedAchievement(id, title, points, type, description, isPositionRequired, positionReq, isExtraCreditsLimited, extraCredits){
/*
    ralliesWithNoPoints = getRallyPortugalPoints() / 0xFF + getRallySafariPoints() / 0xFF + getTourDeCorsePoints() / 0xFF + getRallyRACPoints() / 0xFF
    trigger = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
              isRallyPortugalSelected() && isRallySafariSelected() && isTourDeCorseSelected() && isRallyRACSelected() &&
              prev(ralliesWithNoPoints) == 1 && ralliesWithNoPoints == 0
*/
     
     trigger = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
              isRallyPortugalSelected() && isRallySafariSelected() && isTourDeCorseSelected() && isRallyRACSelected() &&
              ((prev(getGameStatus() != 0x72) && getGameStatus() == 0x72) || // Game beaten, World championship victory
                (prev(getGameStatus() != 0x71) && getGameStatus() == 0x71)) // Game beaten
     
     
     if(isExtraCreditsLimited){
         trigger = trigger && getExtraCreditsUsed() <= extraCredits
     }         
     if(isPositionRequired){
         trigger = trigger && getWorldChampionshipPosition() <= positionReq
     }
     
     achievement(id=id, title=title, points=points, type=type, description=description, trigger=trigger)
}


// Leaderboard functions
// ---------------------

// Rally leaderboard
function setRallyLeaderboard(rallyId){
    start = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() && getExtraCreditsUsed() == 0 &&
              prev(!isStageChronoActive())  && isStageChronoActive()
              
    cancel = prev(!isLimitChronoStageReached()) && isLimitChronoStageReached() || !isPlayingGame()
    
    submit = getCurrentStage() == 2 && (prev(getCentisecRallyTime()) < getCentisecRallyTime())
    

    if(rallyId == 0){
        start = start && isRallyPortugalSelected() && isPlayingRallyPortugal()
        cancel = cancel || !isPlayingRallyPortugal()
        submit = submit && isPlayingRallyPortugal()
    }
    else if (rallyId == 1){
        start = start && isRallySafariSelected() && isPlayingRallySafari()
        cancel = cancel || !isPlayingRallySafari()
        submit = submit && isPlayingRallySafari()
    }
    else if (rallyId == 2){
        start = start && isTourDeCorseSelected() && isPlayingTourDeCorse()
        cancel = cancel || !isPlayingTourDeCorse()
        submit = submit && isPlayingTourDeCorse()
    }
    else if (rallyId == 3){
        start = start && isRallyRACSelected() && isPlayingRallyRAC()
        cancel = cancel || !isPlayingRallyRAC()
        submit = submit && isPlayingRallyRAC()
    }
    else {}
    
    leaderboard(id = rallies[rallyId]["leaderboard"]["id"],
                title = rallies[rallyId]["leaderboard"]["title"],
                description = rallies[rallyId]["leaderboard"]["description"],
                start = start,
                cancel = cancel,
                submit = submit,
                value  = getCentisecRallyTime(),
                format = "MILLISECS", 
                lower_is_better = true                
    )
}

// Stage leaderboard

function setStageLeaderboard(rallyId, stage){
    id = rallies[rallyId]["stages"][stage]["idLeaderboard"]
    title = format("{0} Stage {1} - {2}", 
            rallies[rallyId]["name"],
            rallies[rallyId]["stages"][stage]["stage"],             
            rallies[rallyId]["stages"][stage]["name"])
    description = format("Leaderboard {0} Stage {1} - {2} in one player mode, in Normal or Higher difficulty", 
            rallies[rallyId]["name"],
            rallies[rallyId]["stages"][stage]["stage"],             
            rallies[rallyId]["stages"][stage]["name"])

    start  = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() &&
                  getCurrentStage() == stage &&
                  prev(!isStageChronoActive())  && isStageChronoActive()
                  
                  
    cancel = prev(!isLimitChronoStageReached()) && isLimitChronoStageReached() || !isPlayingGame()
    submit = prev(getFramesAfterFinishStage() == 6) && getFramesAfterFinishStage() == 7 // Updated chrono time after finish
    value  = getCentisecStageTime()
    
    
    if(rallyId == 0){
        start = start && isRallyPortugalSelected() && isPlayingRallyPortugal()
        cancel = cancel || !isPlayingRallyPortugal()
    }
    else if (rallyId == 1){
        start = start && isRallySafariSelected() && isPlayingRallySafari()
        cancel = cancel || !isPlayingRallySafari()
    }
    else if (rallyId == 2){
        start = start && isTourDeCorseSelected() && isPlayingTourDeCorse()
        cancel = cancel || !isPlayingTourDeCorse()
    }
    else if (rallyId == 3){
        start = start && isRallyRACSelected() && isPlayingRallyRAC()
        cancel = cancel || !isPlayingRallyRAC()
    }
    else {}
    
 
    leaderboard(id=id, title=title, description=description, start=start, cancel=cancel, submit=submit, value=value, format = "MILLISECS", lower_is_better = true)   
}




// Achievements - Stages
// ---------------------

for ral in rallies {
    for st in rallies[ral]["stages"]{
        setAchievementVictoryStage(ral, st)
    }
}

// Achievements - Rallies Completed
// --------------------------------

for raId in rallies {
    setAchievementCompleteRally(raId, true, 0)
    
    for car in rallies[raId]["completedOneCredit"] {
        setAchievementCompleteRally(raId, false, car)  
    }
}


// Achievements - Rallies Won
// --------------------------

for raId in rallies {
    for car in rallies[raId]["completedOneCredit"] {
        setAchievementVictoryRally(raId, car)  
    }
}

// Achievements - Game Completed
// -----------------------------
setGameCompletedAchievement(id = 0,
    title = "Another Day at the Office", points = 25, type="win_condition",
    description = "Beat the game in one player mode, in Normal or Higher difficulty",
    isPositionRequired = false, positionReq = 0, isExtraCreditsLimited = false, extraCredits = 0)
    
setGameCompletedAchievement(id = 0,
    title = "Touching the Glory", points = 50, type="",
    description = "Finish in third position, or better, in the World Championship with only 1 credit in one player mode, in Normal or Higher difficulty",
    isPositionRequired = true, positionReq = 2, isExtraCreditsLimited = true, extraCredits = 0)
    
setGameCompletedAchievement(id = 0,
    title = "Rally Is My Middle Name", points = 50, type="",
    description = "Win the World Championship with a maximum of 3 credits in one player mode, in Normal or Higher difficulty",
    isPositionRequired = true, positionReq = 0, isExtraCreditsLimited = true, extraCredits = 2)

// Leaderboards - Stages
// ---------------------

for ral in rallies {
    for st in rallies[ral]["stages"]{
        setStageLeaderboard(ral, st)
    }
}

// Leaderboards - Rallies
// ---------------------

for raId in rallies{
    setRallyLeaderboard(raId)    
}
    

// Leaderboard Score Points
// ------------------------


leaderboard(
        id = 0, 
        title = "Total Score Points",
        description = "Total Score Points with only 1 credit in one player mode, in Normal or Higher difficulty",
        start  = isPlayModeOnePlayerWindow() && isNormalOrHigherDifficulty() && isPlayingGame() && getExtraCreditsUsed() == 0 &&
                (isRallyPortugalSelected() || isRallySafariSelected() || isTourDeCorseSelected() || isRallyRACSelected()) &&
                prev(!isStageChronoActive())  && isStageChronoActive(), // When the Chrono starts counting
        cancel = always_false(),
        submit = (prev(!isLimitChronoStageReached()) && isLimitChronoStageReached()) ||  // When the limit is reached the total points score stops
                 (prev(getGameStatus() != 0x72) && getGameStatus() == 0x72) || // Game beaten, World Championship victory
                 (prev(getGameStatus() != 0x71) && getGameStatus() == 0x71), // Game beaten

        value  = getScorePoints(),
        format = "POINTS", lower_is_better = false
    )
    
  
// Rich Presence
// -------------

rich_presence_conditional_display(getGameScreen() == 0, "Starting a fresh new game 🎮")
rich_presence_conditional_display(!isPlayingGame(), "In the main menu")

rich_presence_conditional_display(isPlayingGame() && getGameStatus() == 0x12 && isPlayingRallyPortugal() && isRallyPortugalSelected(), "Out of time ⏳, {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StagePortugal", getCurrentStage(), stagesPortugalLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1))
rich_presence_conditional_display(isPlayingGame() && getGameStatus() == 0x12 && isPlayingRallySafari() && isRallySafariSelected(), "Out of time ⏳, {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageSafari", getCurrentStage(), stagesSafariLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1))
rich_presence_conditional_display(isPlayingGame() && getGameStatus() == 0x12 && isPlayingTourDeCorse() && isTourDeCorseSelected(), "Out of time ⏳, {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageCorse", getCurrentStage(), stagesCorseLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1))
rich_presence_conditional_display(isPlayingGame() && getGameStatus() == 0x12 && isPlayingRallyRAC() && isRallyRACSelected(), "Out of time ⏳, {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageRAC", getCurrentStage(), stagesRACLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1))                        
                        
rich_presence_conditional_display(isPlayingGame() && getGameScreen() == 3, "Choosing a car 🏎")



rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && !isRallyPortugalSelected() && !isRallySafariSelected() && !isTourDeCorseSelected() && !isRallyRACSelected(), 
"🕵 Choosing the first Rally")

rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && isRallyPortugalSelected() && isPlayingRallyPortugal(), "Chosen Rally Portugal 🍷")
rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && isRallySafariSelected() && isPlayingRallySafari(), "Chosen Rally Safari 🦁")
rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && isTourDeCorseSelected() && isPlayingTourDeCorse(), "Chosen Tour de Corse 🐓")
rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && isRallyRACSelected() && isPlayingRallyRAC(), "Chosen Rally RAC 🌹")

rich_presence_conditional_display(isPlayingGame() && getCurrentStage() == 0xFF && ((isRallySafariSelected() && !isPlayingRallyPortugal()) || 
                                                                (isRallyPortugalSelected() && !isPlayingRallySafari()) ||
                                                                (isTourDeCorseSelected() && !isPlayingTourDeCorse()) ||
                                                                (isRallyRACSelected() && !isPlayingRallyRAC())), "🕵 Choosing the next Rally,💰:{0}, 🔁 {1}",
                        rich_presence_value("Points", getScorePoints()),
                        rich_presence_value("Continues", getExtraCreditsUsed())
)
                                                                

rich_presence_conditional_display(getGameStatus() == 0x72, "🏁 Game beaten, 🥇 World Championship,💰:{0}, 🔁 {1}",
                        rich_presence_value("Points", getScorePoints()),
                        rich_presence_value("Continues", getExtraCreditsUsed())
)
rich_presence_conditional_display(getGameStatus() == 0x71 && getWorldChampionshipPosition() == 1, "🏁 Game beaten, 🥈 World Championship,💰:{0}, 🔁 {1}",
                        rich_presence_value("Points", getScorePoints()),
                        rich_presence_value("Continues", getExtraCreditsUsed())
)
rich_presence_conditional_display(getGameStatus() == 0x71 && getWorldChampionshipPosition() == 2, "🏁 Game beaten, 🥉 World Championship,💰:{0}, 🔁 {1}",
                        rich_presence_value("Points", getScorePoints()),
                        rich_presence_value("Continues", getExtraCreditsUsed())
)
rich_presence_conditional_display(getGameStatus() == 0x71, "🏁 Game beaten, 🏅{0} World Championship, 💰:{1}, 🔁 {2}",
                        rich_presence_value("Position", getWorldChampionshipPosition() + 1),
                        rich_presence_value("Points", getScorePoints()),
                        rich_presence_value("Continues", getExtraCreditsUsed())
)                        


rich_presence_conditional_display(isPlayingGame() && isPlayingRallyPortugal() && isRallyPortugalSelected(), "Playing {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StagePortugal", getCurrentStage(), stagesPortugalLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1)
)
                                  
rich_presence_conditional_display(isPlayingGame() && isPlayingRallySafari() && isRallySafariSelected(), "Playing {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageSafari", getCurrentStage(), stagesSafariLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1)
)

rich_presence_conditional_display(isPlayingGame() && isPlayingTourDeCorse() && isTourDeCorseSelected(), "Playing {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageCorse", getCurrentStage(), stagesCorseLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1)
)

rich_presence_conditional_display(isPlayingGame() && isPlayingRallyRAC() && isRallyRACSelected(), "Playing {0}, {1}, 🚩:{2}",
                        rich_presence_lookup("Rally", getRallyDifficulty(), ralliesLookup),
                        rich_presence_lookup("StageRAC", getCurrentStage(), stagesRACLookup),
                        rich_presence_value("StageNumber", getCurrentStage() + 1)
)


rich_presence_display("Playing World Rally 2: Twin Racing 🔁:{0}, 💰:{1}",
                        rich_presence_value("Continues", getExtraCreditsUsed()),
                        rich_presence_value("Points", getScorePoints()) 
)