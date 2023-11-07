# retainIfDiscard

Retains elements matching predicate.

To import and use `retainIfDiscard` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.retainIfDiscard
```

**Signature**

```ts
export declare const retainIfDiscard: {
  <A>(predicate: Predicate<A>): (self: TSet<A>) => STM.STM<never, never, void>
  <A>(self: TSet<A>, predicate: Predicate<A>): STM.STM<never, never, void>
}
```
