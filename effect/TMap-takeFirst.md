Package: `effect`<br />
Module: `TMap`<br />

## TMap.takeFirst

Takes the first matching value, or retries until there is one.

**Signature**

```ts
declare const takeFirst: { <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<A>; <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L368)

Since v2.0.0