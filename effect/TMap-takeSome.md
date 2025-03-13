Package: `effect`<br />
Module: `TMap`<br />

## TMap.takeSome

Takes all matching values, or retries until there is at least one.

**Signature**

```ts
declare const takeSome: { <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<[A, ...Array<A>]>; <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<[A, ...Array<A>]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L390)

Since v2.0.0