# flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const flipWith: {
  <R, A, E, R2, A2, E2>(f: (effect: Effect<R, A, E>) => Effect<R2, A2, E2>): (
    self: Effect<R, E, A>
  ) => Effect<R2, E2, A2>
  <R, A, E, R2, A2, E2>(self: Effect<R, E, A>, f: (effect: Effect<R, A, E>) => Effect<R2, A2, E2>): Effect<R2, E2, A2>
}
```
