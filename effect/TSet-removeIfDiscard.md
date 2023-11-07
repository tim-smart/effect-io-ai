# removeIfDiscard

Removes elements matching predicate.

To import and use `removeIfDiscard` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.removeIfDiscard
```

**Signature**

```ts
export declare const removeIfDiscard: {
  <A>(predicate: Predicate<A>): (self: TSet<A>) => STM.STM<never, never, void>
  <A>(self: TSet<A>, predicate: Predicate<A>): STM.STM<never, never, void>
}
```
