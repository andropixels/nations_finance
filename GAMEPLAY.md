Gameplay 
===

## October 13 Edition (Subject to Change)

There can be a max of 100 Nations in Alpha

### Traits 

Nation will have the following traits:

* Economic Freedom (ef)
* Political Freedom(polf)
* Personal Freedom(perf)
* Economic Growth(eg)
* Technological Investment(ti)
* Military Spending(ms)

These traits are initialized at 0 , can be a max of 10, and a min of -10. The change as we answer 
issues. No option will be completely positive, they will have both -ve and +ve effect in multiple 
traits. Players get to answer 4 issues everyday.

### Issues

Sample Issue: 
* Should we mandate a one child policy? 
    - Option A: Yes (+1 Economic Growth, -1 Personal Freedom)
    - Option B: No (-1 Economic Growth, +1 Personal Freedom)

### Financials

We also have Dai staked against a Nation (min of 1, max of 10 during Alpha). So, Nation will also have: 

* collateral  -> Amount of Dai staked 
* share -> `(collateral/totalCollateral of 100 Nations) * 100`
* turns -> Will be dropped to nations based on their Share when they answer issues

**share**

Basically, what is the total part of the pie they own in the game. WHen there are no battles, 
Share is completely controlled by collateral. When Battles are introduced, Shares will go up and 
down based on yields won/lost:
`((collateral + yield)/(totalCollateral of all Nations + totalYield of all Nations) * 100`

collateral will never change hands, but yield will.

**turns** 

These are ERC20 tokens. Useless until battles start. They will be burnt when attacks are made, or governance decisions are made. Total of 500 turns will be distributed everyday for alpha.
`turns_per_day = (collateral/totalCollateral of 100 Nations) * 500`


### Stats

Whenver, a player answers the issues (once a day, nation's traits gets updates, which in turn updates nation's stats). These stats will also change when a nation battles and wins or loses. GDP, population and military strength will all take hits based on win/loss.

These stats will determine ranking and battle results.

* Gross Domestic Product (GDP) 
* Population 
* Military Strength
* Morale

**GDP**
`previous_gdp + (8eg + 5ef + 3ti - 3ms - 3polf - 3perf) * (share * 10000)`
  - initial: 10 million 
  - max: 10 trillion 
  - min: 10 million 

**Population**
Grows 100 times as slow as gdp - hence only (share * 100) instead of (share * 10000)
`previous_pop + (8perf + 5polf + 3ef - 4ms - 3eg - 3ef) * (share * 100)`
  - initial: 1 million 
  - max: 2 billion 
  - min: 1 million 

**Military Strength**
`(10ms + 5ti - 4polf - 4perf) * ((population/253) + (gdp*0.039)/1000 )`

Unlike other stats, this is not cumulative. (there is no prev in formula)

Why 253 and 0.039?
- 1 in 253 people in US serves in military, 3.9% of US GDP is used in army spending, so I thought this is a good place to start. gdp factor is divided by 1000 to normalize it's weight compared to population. 

  - initial: ??? 
  - max: ???
  - min: ???

**Morale**
* Added this to help with regulating battle frequency in the future. Everytime there is a battle, 
  morale will drop based on win/loss. If someone's morale drops to 30, they will just surrender, and not fight, and therefore not lose population and gdp. Might surrender 0.1% of daily yield..but not much more. This will prevgent ganging up on somone. 

* Morale will slowly increase per X blocks.

* Morale can potentially be increased by burning TURNS (TBD)

  - initial: 100
  - max: 100
  - min: 0