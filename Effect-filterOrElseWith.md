# filterOrElseWith

Filters the specified effect with the provided function returning the value
of the effect if it is successful, otherwise returns the value of `orElse`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.filterOrElseWith`.

### Signature

```typescript
export declare const filterOrElseWith: {
  <A, B extends A, R2, E2, C>(f: Refinement<A, B>, orElse: (a: A) => Effect<R2, E2, C>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, B | C>
  <A, R2, E2, B>(f: Predicate<A>, orElse: (a: A) => Effect<R2, E2, B>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A | B>
  <R, E, A, B extends A, R2, E2, C>(
    self: Effect<R, E, A>,
    f: Refinement<A, B>,
    orElse: (a: A) => Effect<R2, E2, C>
  ): Effect<R | R2, E | E2, B | C>
  <R, E, A, R2, E2, B>(self: Effect<R, E, A>, f: Predicate<A>, orElse: (a: A) => Effect<R2, E2, B>): Effect<
    R | R2,
    E | E2,
    A | B
  >
}
```
