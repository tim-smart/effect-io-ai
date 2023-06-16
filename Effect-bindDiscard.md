# bindDiscard

Binds an effectful value in a `do` scope

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.bindDiscard`.

### Signature

```typescript
export declare const bindDiscard: {
  <N extends string, K, R2, E2, A>(tag: Exclude<N, keyof K>, f: Effect<R2, E2, A>): <R, E>(
    self: Effect<R, E, K>
  ) => Effect<R2 | R, E2 | E, MergeRecord<K, { [k in N]: A }>>
  <R, E, N extends string, K, R2, E2, A>(self: Effect<R, E, K>, tag: Exclude<N, keyof K>, f: Effect<R2, E2, A>): Effect<
    R | R2,
    E | E2,
    MergeRecord<K, { [k in N]: A }>
  >
}
```
