# tapErrorCause

Returns an effect that effectually "peeks" at the cause of the failure of
this effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const tapErrorCause: {
  <E, R2, E2, X>(f: (cause: Cause.Cause<E>) => Effect<R2, E2, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E | E2, A>
  <R, E, A, R2, E2, X>(self: Effect<R, E, A>, f: (cause: Cause.Cause<E>) => Effect<R2, E2, X>): Effect<
    R | R2,
    E | E2,
    A
  >
}
```
