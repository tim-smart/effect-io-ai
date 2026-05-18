Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Open

Represents the open/active state of an RcMap, containing the actual
resource map that stores entries.

**Signature**

```ts
export interface Open<K, A, E> {
    readonly _tag: "Open"
    readonly map: MutableHashMap.MutableHashMap<K, Entry<A, E>>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L103)

Since v4.0.0