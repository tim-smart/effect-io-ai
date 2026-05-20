Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlyMap

Type-level representation of a `ReadonlyMap` schema whose keys and values are
validated by the provided schemas.

**Signature**

```ts
export interface $ReadonlyMap<Key extends Top, Value extends Top> extends
  declareConstructor<
    globalThis.ReadonlyMap<Key["Type"], Value["Type"]>,
    globalThis.ReadonlyMap<Key["Encoded"], Value["Encoded"]>,
    readonly [Key, Value],
    ReadonlyMapIso<Key, Value>
  >
{
  readonly "Rebuild": $ReadonlyMap<Key, Value>
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8832)

Since v4.0.0