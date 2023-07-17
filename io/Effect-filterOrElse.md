# filterOrElse

Filters the specified effect with the provided function returning the value
of the effect if it is successful, otherwise returns the value of `orElse`.

To import and use `filterOrElse` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrElse
```

**Signature**

```ts
export declare const filterOrElse: {
  <A, B extends A, X extends A, R2, E2, C>(filter: Refinement<A, B>, orElse: (a: X) => Effect<R2, E2, C>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, B | C>
  <A, X extends A, Y extends A, R2, E2, B>(filter: Predicate<X>, orElse: (a: Y) => Effect<R2, E2, B>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A | B>
  <R, E, A, B extends A, X extends A, R2, E2, C>(
    self: Effect<R, E, A>,
    filter: Refinement<A, B>,
    orElse: (a: X) => Effect<R2, E2, C>
  ): Effect<R | R2, E | E2, B | C>
  <R, E, A, X extends A, Y extends A, R2, E2, B>(
    self: Effect<R, E, A>,
    filter: Predicate<X>,
    orElse: (a: Y) => Effect<R2, E2, B>
  ): Effect<R | R2, E | E2, A | B>
}
```
