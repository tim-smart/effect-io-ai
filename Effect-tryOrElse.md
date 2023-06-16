# tryOrElse

Executed `that` in case `self` fails with a `Cause` that doesn't contain
defects, executes `success` in case of successes

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const tryOrElse: {
  <R2, E2, A2, A, R3, E3, A3>(that: LazyArg<Effect<R2, E2, A2>>, onSuccess: (a: A) => Effect<R3, E3, A3>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R3 | R, E2 | E3, A2 | A3>
  <R, E, A, R2, E2, A2, R3, E3, A3>(
    self: Effect<R, E, A>,
    that: LazyArg<Effect<R2, E2, A2>>,
    onSuccess: (a: A) => Effect<R3, E3, A3>
  ): Effect<R | R2 | R3, E2 | E3, A2 | A3>
}
```
