//
//  Trampoline.m
//  FightList
//
//  Created by Alexandro Luongo on 06/04/17.
//
//

#import "Trampoline.h"

@implementation Trampoline

+(void)performTrampoline:(HWMReliefAnswersView*)relief game:(HWMSet*)game
{
    // We might either be "User1" or "User2", depending
    // on who of the two players started the match
    
    if (game.answerUser1)
    {
        // We're "User2"
        [relief addAnswers:[[NSArray alloc] init] and:game.answerUser1 isMatchDone:false];
    }
    else if (game.answerUser2)
    {
        // We're "User1"
        [relief addAnswers:[[NSArray alloc] init] and:game.answerUser2 isMatchDone:false];
    }
}

@end
