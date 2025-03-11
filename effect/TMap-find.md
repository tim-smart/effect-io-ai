## find

Finds the key/value pair matching the specified predicate, and uses the
provided function to extract a value out of it.

**Signature**

```ts
declare const find: { <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<Option.Option<A>>; <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L76)

Since v2.0.0