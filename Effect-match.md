# match

Folds over the failure value or the success value to yield an effect that
does not fail, but succeeds with the value returned by the left or right
function passed to `match`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const match: {
  <E, A, A2, A3>(onFailure: (error: E) => A2, onSuccess: (value: A) => A3): <R>(
    self: Effect<R, E, A>
  ) => Effect<R, never, A2 | A3>
  <R, E, A, A2, A3>(self: Effect<R, E, A>, onFailure: (error: E) => A2, onSuccess: (value: A) => A3): Effect<
    R,
    never,
    A2 | A3
  >
}
```
