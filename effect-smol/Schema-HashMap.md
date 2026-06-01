Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMap

Type-level representation returned by `HashMap`.

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
  readonly "Rebuild": HashMap<Key, Value>
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9374)

Since v3.10.0