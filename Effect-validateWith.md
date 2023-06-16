# validateWith

Sequentially zips this effect with the specified effect using the specified
combiner function. Combines the causes in case both effect fail.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const validateWith: {
  <A, R2, E2, B, C>(that: Effect<R2, E2, B>, f: (a: A, b: B) => C): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, C>
  <R, E, A, R2, E2, B, C>(self: Effect<R, E, A>, that: Effect<R2, E2, B>, f: (a: A, b: B) => C): Effect<
    R | R2,
    E | E2,
    C
  >
}
```
