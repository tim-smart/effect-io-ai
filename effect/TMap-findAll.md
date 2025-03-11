## findAll

Finds all the key/value pairs matching the specified predicate, and uses
the provided function to extract values out them.

**Signature**

```ts
declare const findAll: { <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<Array<A>>; <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L105)

Since v2.0.0