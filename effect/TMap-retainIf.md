Package: `effect`<br />
Module: `TMap`<br />

## TMap.retainIf

Retains entries in a `TMap` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

**Signature**

```ts
declare const retainIf: { <K, V>(predicate: (key: K, value: V) => boolean, options: { readonly discard: true; }): (self: TMap<K, V>) => STM.STM<void>; <K, V>(predicate: (key: K, value: V) => boolean, options?: { readonly discard: false; }): (self: TMap<K, V>) => STM.STM<Array<[K, V]>>; <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean, options: { readonly discard: true; }): STM.STM<void>; <K, V>(self: TMap<K, V>, predicate: (key: K, value: V) => boolean, options?: { readonly discard: false; }): STM.STM<Array<[K, V]>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L303)

Since v2.0.0