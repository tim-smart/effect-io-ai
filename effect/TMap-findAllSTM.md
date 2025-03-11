## findAllSTM

Finds all the key/value pairs matching the specified predicate, and uses
the provided effectful function to extract values out of them..

**Signature**

```ts
declare const findAllSTM: { <K, V, A, E, R>(pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): (self: TMap<K, V>) => STM.STM<Array<A>, E, R>; <K, V, A, E, R>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L117)

Since v2.0.0