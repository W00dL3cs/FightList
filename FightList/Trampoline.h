//
//  Trampoline.h
//  FightList
//
//  Created by Alexandro Luongo on 06/04/17.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface HWMReliefAnswersView

-(void)initWandsButton:(bool)arg1;
-(void)initAnswersContainer;

-(void)addAnswers:(id)answers1 and:(id)answers2 isMatchDone:(BOOL)finished;

@end

@interface HWMSet

@property NSArray* answerUser1;
@property NSArray* answerUser2;

@end

@interface HWMGameOverviewRoundView

@property HWMSet* set;
@property HWMReliefAnswersView* reliefAnswersView;

@end

@interface HWMGamePlaySetViewController

@property NSMutableArray* remainingRareAnswersForJoker;
@property NSMutableArray* remainingSuperRareAnswersForJoker;

@end

@interface HWMSettingsTableViewCell

@property NSString* originalText;
@property UILabel* cellTextLabel;

@end

@interface Trampoline : NSObject

+(void)performTrampoline:(HWMReliefAnswersView*)relief game:(HWMSet*)game;

@end
