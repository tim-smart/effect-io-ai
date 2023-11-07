# retainIf

Retains bindings matching predicate and returns removed bindings.

To import and use `retainIf` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.retainIf
```

**Signature**

```ts
export declare const retainIf: {
  <A>(predicate: Predicate<A>): (self: TSet<A>) => STM.STM<never, never, A[]>
  <A>(self: TSet<A>, predicate: Predicate<A>): STM.STM<never, never, A[]>
}
```
