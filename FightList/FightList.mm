#line 1 "/Users/Alex/Desktop/Development/Tweaks/FightList/FightList/FightList.xm"
#import "Trampoline.h"

#define SWAG_AMOUNT 696969


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class HWMGamePlaySetViewController; @class HWMUserManager; @class HWMSettingsViewController; @class HWMGameOverviewRoundView; @class HWMReliefAnswersView; 
static void (*_logos_orig$_ungrouped$HWMReliefAnswersView$initContainerView)(_LOGOS_SELF_TYPE_NORMAL HWMReliefAnswersView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HWMReliefAnswersView$initContainerView(_LOGOS_SELF_TYPE_NORMAL HWMReliefAnswersView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HWMGamePlaySetViewController$initCountdown)(_LOGOS_SELF_TYPE_NORMAL HWMGamePlaySetViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HWMGamePlaySetViewController$initCountdown(_LOGOS_SELF_TYPE_NORMAL HWMGamePlaySetViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HWMGameOverviewRoundView$initPlayButton)(_LOGOS_SELF_TYPE_NORMAL HWMGameOverviewRoundView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HWMGameOverviewRoundView$initPlayButton(_LOGOS_SELF_TYPE_NORMAL HWMGameOverviewRoundView* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$HWMUserManager$fightCoins)(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$HWMUserManager$fightCoins(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$HWMUserManager$fightGems)(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$HWMUserManager$fightGems(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$HWMUserManager$isPremium)(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$HWMUserManager$isPremium(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$)(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSInteger); static id _logos_method$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSInteger); static id (*_logos_orig$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath*); static id _logos_method$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath*); static void (*_logos_orig$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath*); static void _logos_method$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath*); 

#line 5 "/Users/Alex/Desktop/Development/Tweaks/FightList/FightList/FightList.xm"



static void _logos_method$_ungrouped$HWMReliefAnswersView$initContainerView(_LOGOS_SELF_TYPE_NORMAL HWMReliefAnswersView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$HWMReliefAnswersView$initContainerView(self, _cmd);
    
    [self initWandsButton:true];
    [self initAnswersContainer];
}








static void _logos_method$_ungrouped$HWMGamePlaySetViewController$initCountdown(_LOGOS_SELF_TYPE_NORMAL HWMGamePlaySetViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$HWMGamePlaySetViewController$initCountdown(self, _cmd);
    
    
    if (self.remainingSuperRareAnswersForJoker && self.remainingRareAnswersForJoker)
    {
        
        [self.remainingRareAnswersForJoker addObjectsFromArray:self.remainingSuperRareAnswersForJoker];
    }
}






static void _logos_method$_ungrouped$HWMGameOverviewRoundView$initPlayButton(_LOGOS_SELF_TYPE_NORMAL HWMGameOverviewRoundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$HWMGameOverviewRoundView$initPlayButton(self, _cmd);
    
    if (self.reliefAnswersView && self.set)
    {
        [Trampoline performTrampoline:self.reliefAnswersView game:self.set];
    }
}







static int _logos_method$_ungrouped$HWMUserManager$fightCoins(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return SWAG_AMOUNT;
}



static int _logos_method$_ungrouped$HWMUserManager$fightGems(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return SWAG_AMOUNT;
}



static BOOL _logos_method$_ungrouped$HWMUserManager$isPremium(_LOGOS_SELF_TYPE_NORMAL HWMUserManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return true;
}






static id _logos_method$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id tableView, NSInteger section) {
    if (section == 3)
    {
        return @"Cracked by";
    }
    
    return _logos_orig$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$(self, _cmd, tableView, section);
}


static id _logos_method$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id tableView, NSIndexPath* indexPath) {
    HWMSettingsTableViewCell* original = _logos_orig$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    
    if (indexPath.section == 3)
    {
        original.cellTextLabel.text = @"Cracked by W00dL3cs";
    }
    
    return original;
}


static void _logos_method$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL HWMSettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id tableView, NSIndexPath* indexPath) {
    if (indexPath.section == 3)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://w00dl3cs.github.io"]];
    }
    else
    {
        _logos_orig$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HWMReliefAnswersView = objc_getClass("HWMReliefAnswersView"); MSHookMessageEx(_logos_class$_ungrouped$HWMReliefAnswersView, @selector(initContainerView), (IMP)&_logos_method$_ungrouped$HWMReliefAnswersView$initContainerView, (IMP*)&_logos_orig$_ungrouped$HWMReliefAnswersView$initContainerView);Class _logos_class$_ungrouped$HWMGamePlaySetViewController = objc_getClass("HWMGamePlaySetViewController"); MSHookMessageEx(_logos_class$_ungrouped$HWMGamePlaySetViewController, @selector(initCountdown), (IMP)&_logos_method$_ungrouped$HWMGamePlaySetViewController$initCountdown, (IMP*)&_logos_orig$_ungrouped$HWMGamePlaySetViewController$initCountdown);Class _logos_class$_ungrouped$HWMGameOverviewRoundView = objc_getClass("HWMGameOverviewRoundView"); MSHookMessageEx(_logos_class$_ungrouped$HWMGameOverviewRoundView, @selector(initPlayButton), (IMP)&_logos_method$_ungrouped$HWMGameOverviewRoundView$initPlayButton, (IMP*)&_logos_orig$_ungrouped$HWMGameOverviewRoundView$initPlayButton);Class _logos_class$_ungrouped$HWMUserManager = objc_getClass("HWMUserManager"); MSHookMessageEx(_logos_class$_ungrouped$HWMUserManager, @selector(fightCoins), (IMP)&_logos_method$_ungrouped$HWMUserManager$fightCoins, (IMP*)&_logos_orig$_ungrouped$HWMUserManager$fightCoins);MSHookMessageEx(_logos_class$_ungrouped$HWMUserManager, @selector(fightGems), (IMP)&_logos_method$_ungrouped$HWMUserManager$fightGems, (IMP*)&_logos_orig$_ungrouped$HWMUserManager$fightGems);MSHookMessageEx(_logos_class$_ungrouped$HWMUserManager, @selector(isPremium), (IMP)&_logos_method$_ungrouped$HWMUserManager$isPremium, (IMP*)&_logos_orig$_ungrouped$HWMUserManager$isPremium);Class _logos_class$_ungrouped$HWMSettingsViewController = objc_getClass("HWMSettingsViewController"); MSHookMessageEx(_logos_class$_ungrouped$HWMSettingsViewController, @selector(tableView:titleForHeaderInSection:), (IMP)&_logos_method$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$, (IMP*)&_logos_orig$_ungrouped$HWMSettingsViewController$tableView$titleForHeaderInSection$);MSHookMessageEx(_logos_class$_ungrouped$HWMSettingsViewController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$HWMSettingsViewController$tableView$cellForRowAtIndexPath$);MSHookMessageEx(_logos_class$_ungrouped$HWMSettingsViewController, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$HWMSettingsViewController$tableView$didSelectRowAtIndexPath$);} }
#line 108 "/Users/Alex/Desktop/Development/Tweaks/FightList/FightList/FightList.xm"
