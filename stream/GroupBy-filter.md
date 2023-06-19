# filter

Filter the groups to be processed.

Part of the `GroupBy` module, imported from `@effect/stream/GroupBy`.

**Signature**

```ts
export declare const filter: {
  <K>(predicate: Predicate<K>): <R, E, V>(self: GroupBy<R, E, K, V>) => GroupBy<R, E, K, V>
  <R, E, V, K>(self: GroupBy<R, E, K, V>, predicate: Predicate<K>): GroupBy<R, E, K, V>
}
```
