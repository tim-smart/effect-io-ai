# filterOrDie

Filter the specified effect with the provided function, dying with specified
defect if the predicate fails.

To import and use `filterOrDie` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrDie
```

**Signature**

```ts
export declare const filterOrDie: {
  <A, B extends A, X extends A>(filter: Refinement<A, B>, orDieWith: (a: X) => unknown): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E, B>
  <A, X extends A, Y extends A>(filter: Predicate<X>, orDieWith: (a: Y) => unknown): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E, A>
  <R, E, A, B extends A, X extends A>(
    self: Effect<R, E, A>,
    filter: Refinement<A, B>,
    orDieWith: (a: X) => unknown
  ): Effect<R, E, B>
  <R, E, A, X extends A, Y extends A>(
    self: Effect<R, E, A>,
    filter: Predicate<X>,
    orDieWith: (a: Y) => unknown
  ): Effect<R, E, A>
}
```
