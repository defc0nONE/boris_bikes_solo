## Boris Bikes (1P Side only)
This repo is mostly to reinforce what I've done over my pair-programming sessions or to experiment with other approaches that I've noted down in my journal

Or I might just be a nerd ass nerd practicing at home after a *sweet* kebab and doing this as therapy to fall asleep. Up to you, dear README scourer.

(this will get updated with *actual* instructions in due course)

### User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Objects  | Messages
------------- | -------------
User  |
DockingStation  | release_bike
Bike  | working?

### Domain Model

```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
```
