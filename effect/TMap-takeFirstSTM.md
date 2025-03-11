## takeFirstSTM

Takes the first matching value, or retries until there is one.

**Signature**

```ts
declare const takeFirstSTM: { <K, V, A, E, R>(pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): (self: TMap<K, V>) => STM.STM<A, E, R>; <K, V, A, E, R>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L379)

Since v2.0.0