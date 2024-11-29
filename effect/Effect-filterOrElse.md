# filterOrElse

Filters the specified effect with the provided function returning the value
of the effect if it is successful, otherwise returns the value of `orElse`.

To import and use `filterOrElse` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.filterOrElse
undefined

**Signature**

```ts
export declare const filterOrElse: {
  <A, B extends A, C, E2, R2>(
    refinement: Refinement<NoInfer<A>, B>,
    orElse: (a: NoInfer<A>) => Effect<C, E2, R2>
  ): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>
  <A, B, E2, R2>(
    predicate: Predicate<NoInfer<A>>,
    orElse: (a: NoInfer<A>) => Effect<B, E2, R2>
  ): <E, R>(self: Effect<A, E, R>) => Effect<A | B, E2 | E, R2 | R>
  <A, E, R, B extends A, C, E2, R2>(
    self: Effect<A, E, R>,
    refinement: Refinement<A, B>,
    orElse: (a: A) => Effect<C, E2, R2>
  ): Effect<B | C, E | E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Effect<A, E, R>,
    predicate: Predicate<A>,
    orElse: (a: A) => Effect<B, E2, R2>
  ): Effect<A | B, E | E2, R | R2>
}
```
