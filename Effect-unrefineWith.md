# unrefineWith

Takes some fiber failures and converts them into errors, using the specified
function to convert the `E` into an `E1 | E2`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const unrefineWith: {
  <E, E1, E2>(pf: (u: unknown) => Option.Option<E1>, f: (e: E) => E2): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E2, A>
  <R, E, A, E1, E2>(self: Effect<R, E, A>, pf: (u: unknown) => Option.Option<E1>, f: (e: E) => E2): Effect<
    R,
    E1 | E2,
    A
  >
}
```
