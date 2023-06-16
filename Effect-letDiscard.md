# letDiscard

Like bind for values

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const letDiscard: {
  <N extends string, K, A>(tag: Exclude<N, keyof K>, f: A): <R, E>(
    self: Effect<R, E, K>
  ) => Effect<R, E, MergeRecord<K, { [k in N]: A }>>
  <R, E, K, N extends string, A>(self: Effect<R, E, K>, tag: Exclude<N, keyof K>, f: A): Effect<
    R,
    E,
    MergeRecord<K, { [k in N]: A }>
  >
}
```
