# difference

Atomically transforms the set into the difference of itself and the
provided set.

To import and use `difference` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(other: TSet<A>): (self: TSet<A>) => STM.STM<void>
  <A>(self: TSet<A>, other: TSet<A>): STM.STM<void>
}
```
