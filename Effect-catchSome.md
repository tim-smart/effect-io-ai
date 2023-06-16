# catchSome

Recovers from some or all of the error cases.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const catchSome: {
  <E, R2, E2, A2>(pf: (e: E) => Option.Option<Effect<R2, E2, A2>>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Effect<R, E, A>, pf: (e: E) => Option.Option<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```
