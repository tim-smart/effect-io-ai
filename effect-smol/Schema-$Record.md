Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Record

Companion type for a key-value record (map) with a typed key and value schema.
Produced by `Record`.

**When to use**

Use as the concrete schema type returned by `Record` when an API needs to
accept or return a record schema with typed property keys and values.

**See**

- `Record` for constructing record schemas
- `StructWithRest` for combining fixed struct fields with record index signatures

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3345)

Since v4.0.0