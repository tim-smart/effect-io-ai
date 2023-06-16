# whenCaseEffect

Runs an effect when the supplied partial function matches for the given
value, otherwise does nothing.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const whenCaseEffect: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<Effect<R2, E2, A2>>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, Option.Option<A2>>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, pf: (a: A) => Option.Option<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    Option.Option<A2>
  >
}
```
