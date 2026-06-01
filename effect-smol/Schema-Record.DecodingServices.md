Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.DecodingServices

Union of the decoding service requirements of a record's key schema and value
schema.

**Signature**

```ts
type DecodingServices<Key, Value> = | Key["DecodingServices"]
    | Value["DecodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3408)

Since v4.0.0