#import "Trampoline.h"

#define SWAG_AMOUNT 696969

%hook HWMReliefAnswersView

// Wouldn't be cool if we could get
// a list of all the available answers
// for a given question, before having
// to play? ... Well, we can.
-(void)initContainerView
{
    %orig;
    
    [self initWandsButton:true];
    [self initAnswersContainer];
}

%end

%hook HWMGamePlaySetViewController

// On iOS, the game does not read answers from the
// 3-points pool when clicking on the joker button...
-(void)initCountdown
{
    %orig;
    
    // Check if we have both 2-points and 3-points answers
    if (self.remainingSuperRareAnswersForJoker && self.remainingRareAnswersForJoker)
    {
        // Add the 3-points to the 2-points array, so that the game will be able to fetch them
        [self.remainingRareAnswersForJoker addObjectsFromArray:self.remainingSuperRareAnswersForJoker];
    }
}

%end

%hook HWMGameOverviewRoundView

// When the "Play" button is available, it means
// we're either starting a new game... or we're
// playing AFTER our opponent has already given
// his answers. If that's the case, we wanna
// see how much he scored ;)
-(void)initPlayButton
{
    %orig;
    
    // Check if the view has actually been loaded
    if (self.reliefAnswersView && self.set)
    {
        // Call our cool stuff
        [Trampoline performTrampoline:self.reliefAnswersView game:self.set];
    }
}

%end

%hook HWMUserManager

// No limits on our currency, thanks
-(int)fightCoins
{
    return SWAG_AMOUNT;
}

// No limits on our currency, thanks
-(int)fightGems
{
    return SWAG_AMOUNT;
}

// No Ads, thanks
-(BOOL)isPremium
{
    return true;
}

%end

// Credits&Stuff
%hook HWMSettingsViewController

-(id)tableView:(id)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 3)
    {
        return @"Cracked by";
    }
    
    return %orig;
}

-(id)tableView:(id)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    HWMSettingsTableViewCell* original = %orig;
    
    if (indexPath.section == 3)
    {
        original.cellTextLabel.text = @"Cracked by W00dL3cs";
    }
    
    return original;
}

-(void)tableView:(id)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == 3)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://w00dl3cs.github.io"]];
    }
    else
    {
        %orig;
    }
}

%end
