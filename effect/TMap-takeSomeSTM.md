## takeSomeSTM

Takes all matching values, or retries until there is at least one.

**Signature**

```ts
declare const takeSomeSTM: { <K, V, A, E, R>(pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): (self: TMap<K, V>) => STM.STM<[A, ...Array<A>], E, R>; <K, V, A, E, R>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<[A, ...Array<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L401)

Since v2.0.0