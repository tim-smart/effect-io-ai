# RecipientBehaviour

A RecipientBehaviour describes how a specific RecipientType should behave.
This is the actual implementation of what an entity should do upon receiving a Msg,
this could require additional context.

The scope provided in the context is controlled by the cluster EntityManager,
and is used to request the shoutdown of the entity,
so you can safely scope whatever resource you want to use for your behaviour
and the EntityManager will close the scope for you when the entity is shoutdown.

The function returned by the RecipientBehaviour effect is what we call "offer" effect.
The offer effect is used by the EntityManager to give messages to the RecipientBehaviour.

To import and use `RecipientBehaviour` from the "RecipientBehaviour" module:

ts
import \* as RecipientBehaviour from "@effect/cluster/RecipientBehaviour"
// Can be accessed like this
RecipientBehaviour.RecipientBehaviour
undefined
