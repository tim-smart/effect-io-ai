# retryUntil

Filters the value produced by this effect, retrying the transaction until
the predicate returns `true` for the value.

To import and use `retryUntil` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.retryUntil
```

**Signature**

```ts
export declare const retryUntil: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: STM<A, E, R>) => STM<B, E, R>
  <A>(predicate: Predicate<A>): <E, R>(self: STM<A, E, R>) => STM<A, E, R>
  <A, E, R, B extends A>(self: STM<A, E, R>, refinement: Refinement<A, B>): STM<B, E, R>
  <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>): STM<A, E, R>
}
```
