Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.isEmpty

Returns `true` when the `MutableHashMap` contains no key-value pairs.

**When to use**

Use to branch on whether a mutable map currently has any entries.

**See**

- `size` for reading the exact number of entries

**Signature**

```ts
declare const isEmpty: <K, V>(self: MutableHashMap<K, V>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L848)

Since v2.0.0