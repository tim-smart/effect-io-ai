Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record.EncodingServices

Union of the encoding service requirements of a record's key schema and value
schema.

**Signature**

```ts
type EncodingServices<Key, Value> = | Key["EncodingServices"]
    | Value["EncodingServices"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3750)

Since v4.0.0