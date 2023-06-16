# onError

Runs the specified effect if this effect fails, providing the error to the
effect if it exists. The provided effect will not be interrupted.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const onError: {
  <E, R2, X>(cleanup: (cause: Cause.Cause<E>) => Effect<R2, never, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E, A>
  <R, A, E, R2, X>(self: Effect<R, E, A>, cleanup: (cause: Cause.Cause<E>) => Effect<R2, never, X>): Effect<
    R | R2,
    E,
    A
  >
}
```
