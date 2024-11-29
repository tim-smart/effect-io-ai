# forkShutdown

Forks the shutdown of the current recipient behaviour as soon as possible.

To import and use `forkShutdown` from the "RecipientBehaviourContext" module:

ts
import \* as RecipientBehaviourContext from "@effect/cluster/RecipientBehaviourContext"
// Can be accessed like this
RecipientBehaviourContext.forkShutdown
undefined

**Signature**

```ts
export declare const forkShutdown: Effect.Effect<void, never, RecipientBehaviourContext>
```
