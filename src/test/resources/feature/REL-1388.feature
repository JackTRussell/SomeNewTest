@ST_892805736
Feature: Saving mode

@SC_972438093
Scenario Outline: Saving mode item on Project Settings page
Given I'm logged in as <user>
When I'm on page Project Settings
Then I see item 'Saving mode' under all items
And mode 'Direct' is selected by default

Examples: 
|user|
|DO|
|PM|
|TM|

@SC_964490917
Scenario Outline: Control to choose saving mode
Given I'm logged in as <user>
And I'm on page Project Settings
When I click on Saving mode control
Then I see <action>

Examples: 
|user|action|
|DO|dropdown is expanded|
|PM|dropdown is expanded|
|TM|nothing happened|

@SC_925372285
Scenario Outline: Saving mode tooltips
Given I’m logged as <user>
And I’m on page Project Settings
When I expanded Saving mode dropdown
And hover Direct mode
Then I see tooltip "Feature and scenario changes are sent to VCS and TTS at once"
When I hover Requiring Confirmation mode
Then I see tooltip "Feature and scenario changes made by user would be saved to Relime DB only. The changes should be approved and sent to VCS and TTS by PM only"

Examples: 
|user|
|DO|
|PM|

