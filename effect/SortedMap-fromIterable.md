Package: `effect`<br />
Module: `SortedMap`<br />

## SortedMap.fromIterable

Creates a new `SortedMap` from an iterable collection of key/value pairs.

**Signature**

```ts
declare const fromIterable: { <B>(ord: Order<B>): <K extends B, V>(iterable: Iterable<readonly [K, V]>) => SortedMap<K, V>; <K extends B, V, B>(iterable: Iterable<readonly [K, V]>, ord: Order<B>): SortedMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SortedMap.ts#L100)

Since v2.0.0