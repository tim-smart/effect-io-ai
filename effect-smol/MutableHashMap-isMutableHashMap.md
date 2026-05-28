Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.isMutableHashMap

Checks whether the specified value is a `MutableHashMap`, `false` otherwise.

**When to use**

Use to narrow an unknown value before treating it as a mutable hash map.

**Details**

The check looks for the `MutableHashMap` runtime marker.

**Gotchas**

The check does not validate the key or value types carried by the map.

**See**

- `MutableHashMap` for the mutable hash map interface

**Signature**

```ts
declare const isMutableHashMap: <K, V>(value: unknown) => value is MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L128)

Since v4.0.0