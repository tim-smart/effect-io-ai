# zipWithPar

Sequentially zips this effect with the specified effect using the
specified combiner function.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.zipWithPar`.

### Signature

```typescript
export declare const zipWithPar: {
  <R2, E2, A2, A, B>(that: Effect<R2, E2, A2>, f: (a: A, b: A2) => B): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, B>
  <R, E, A, R2, E2, A2, B>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>, f: (a: A, b: A2) => B): Effect<
    R | R2,
    E | E2,
    B
  >
}
```
