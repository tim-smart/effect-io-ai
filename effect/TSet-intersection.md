# intersection

Atomically transforms the set into the intersection of itself and the
provided set.

To import and use `intersection` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.intersection
```

**Signature**

```ts
export declare const intersection: {
  <A>(other: TSet<A>): (self: TSet<A>) => STM.STM<never, never, void>
  <A>(self: TSet<A>, other: TSet<A>): STM.STM<never, never, void>
}
```
