Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMap

Schema for an Effect `HashMap` where keys and values must conform to the
provided schemas.

**Signature**

```ts
export interface HashMap<Key extends Top, Value extends Top> extends
  declareConstructor<
    HashMap_.HashMap<Key["Type"], Value["Type"]>,
    HashMap_.HashMap<Key["Encoded"], Value["Encoded"]>,
    readonly [Key, Value],
    HashMapIso<Key, Value>
  >
{
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7903)

Since v4.0.0