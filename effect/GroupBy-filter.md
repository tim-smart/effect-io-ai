## filter

Filter the groups to be processed.

**Signature**

```ts
declare const filter: { <K>(predicate: Predicate<NoInfer<K>>): <V, E, R>(self: GroupBy<K, V, E, R>) => GroupBy<K, V, E, R>; <K, V, E, R>(self: GroupBy<K, V, E, R>, predicate: Predicate<K>): GroupBy<K, V, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GroupBy.ts#L79)

Since v2.0.0