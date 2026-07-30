Package: `effect`<br />
Module: `TMap`<br />

## TMap.findSTM

Finds the key/value pair matching the specified predicate, and uses the
provided effectful function to extract a value out of it.

**Signature**

```ts
declare const findSTM: { <K, V, A, E, R>(f: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): (self: TMap<K, V>) => STM.STM<Option.Option<A>, E, R>; <K, V, A, E, R>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L88)

Since v2.0.0