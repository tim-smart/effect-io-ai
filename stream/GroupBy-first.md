# first

Only consider the first `n` groups found in the `Stream`.

Part of the `GroupBy` module, imported from `@effect/stream/GroupBy`.

**Signature**

```ts
export declare const first: {
  (n: number): <R, E, K, V>(self: GroupBy<R, E, K, V>) => GroupBy<R, E, K, V>
  <R, E, K, V>(self: GroupBy<R, E, K, V>, n: number): GroupBy<R, E, K, V>
}
```
