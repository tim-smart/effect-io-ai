Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Record

Companion type for a key-value record (map) with a typed key and value schema.
Produced by `Record`.

**Signature**

```ts
export interface $Record<Key extends Record.Key, Value extends Top> extends
  Bottom<
    Record.Type<Key, Value>,
    Record.Encoded<Key, Value>,
    Record.DecodingServices<Key, Value>,
    Record.EncodingServices<Key, Value>,
    AST.Objects,
    $Record<Key, Value>,
    Simplify<Record.MakeIn<Key, Value>>,
    Record.Iso<Key, Value>
  >
{
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2731)

Since v4.0.0