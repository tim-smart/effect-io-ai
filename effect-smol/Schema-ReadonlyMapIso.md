Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlyMapIso

Iso representation used for `ReadonlyMap` schemas: an array of readonly
`[key, value]` tuples using each entry schema's `Iso` type.

**Signature**

```ts
type ReadonlyMapIso<Key, Value> = ReadonlyArray<readonly [Key["Iso"], Value["Iso"]]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9298)

Since v4.0.0