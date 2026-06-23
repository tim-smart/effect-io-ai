Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMapIso

Iso representation used for `HashMap` schemas: an array of readonly
`[key, value]` tuples using each entry schema's `Iso` type.

**Signature**

```ts
type HashMapIso<Key, Value> = ReadonlyArray<
  readonly [Key["Iso"], Value["Iso"]]
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9832)

Since v4.0.0