# validateWithPar

Returns an effect that executes both this effect and the specified effect,
in parallel, combining their results with the specified `f` function. If
both sides fail, then the cause will be combined.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.validateWithPar`.

### Signature

```typescript
export declare const validateWithPar: {
  <A, R1, E1, B, C>(that: Effect<R1, E1, B>, f: (a: A, b: B) => C): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E1 | E, C>
  <R, E, A, R1, E1, B, C>(self: Effect<R, E, A>, that: Effect<R1, E1, B>, f: (a: A, b: B) => C): Effect<
    R | R1,
    E | E1,
    C
  >
}
```
