Package: `effect`<br />
Module: `Differ`<br />

## Differ.hashMap

Constructs a differ that knows how to diff a `HashMap` of keys and values given
a differ that knows how to diff the values.

**Signature**

```ts
declare const hashMap: <Key, Value, Patch>(differ: Differ<Value, Patch>) => Differ<HashMap<Key, Value>, Differ.HashMap.Patch<Key, Value, Patch>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L345)

Since v2.0.0