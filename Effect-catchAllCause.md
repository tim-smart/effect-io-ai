# catchAllCause

Recovers from both recoverable and unrecoverable errors.

See `absorb`, `sandbox`, `mapErrorCause` for other functions that can
recover from defects.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.catchAllCause`.

### Signature

```typescript
export declare const catchAllCause: {
  <E, R2, E2, A2>(f: (cause: Cause.Cause<E>) => Effect<R2, E2, A2>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Effect<R, E, A>, f: (cause: Cause.Cause<E>) => Effect<R2, E2, A2>): Effect<
    R | R2,
    E2,
    A | A2
  >
}
```
