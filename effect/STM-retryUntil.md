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
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <R, E>(self: STM<R, E, A>) => STM<R, E, B>
  <A>(predicate: Predicate<A>): <R, E>(self: STM<R, E, A>) => STM<R, E, A>
  <R, E, A, B extends A>(self: STM<R, E, A>, refinement: Refinement<A, B>): STM<R, E, B>
  <R, E, A>(self: STM<R, E, A>, predicate: Predicate<A>): STM<R, E, A>
}
```
