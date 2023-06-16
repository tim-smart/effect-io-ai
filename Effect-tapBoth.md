# tapBoth

Returns an effect that effectfully "peeks" at the failure or success of
this effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const tapBoth: {
  <E, A, R2, E2, X, R3, E3, X1>(f: (e: E) => Effect<R2, E2, X>, g: (a: A) => Effect<R3, E3, X1>): <R>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R3 | R, E | E2 | E3, A>
  <R, E, A, R2, E2, X, R3, E3, X1>(
    self: Effect<R, E, A>,
    f: (e: E) => Effect<R2, E2, X>,
    g: (a: A) => Effect<R3, E3, X1>
  ): Effect<R | R2 | R3, E | E2 | E3, A>
}
```
