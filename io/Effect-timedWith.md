# timedWith

A more powerful variation of `timed` that allows specifying the clock.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const timedWith: {
  <R1, E1>(milliseconds: Effect<R1, E1, number>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E1 | E, [Duration.Duration, A]>
  <R, E, A, R1, E1>(self: Effect<R, E, A>, milliseconds: Effect<R1, E1, number>): Effect<
    R | R1,
    E | E1,
    [Duration.Duration, A]
  >
}
```
