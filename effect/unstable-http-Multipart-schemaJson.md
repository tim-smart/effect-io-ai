Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.schemaJson

Creates a decoder for a JSON-encoded field in persisted multipart data.

**Details**

The selected field is parsed from a JSON string and decoded with the supplied
schema.

**Signature**

```ts
declare const schemaJson: <A, RD>(schema: Schema.ConstraintDecoder<A, RD>, options?: ParseOptions | undefined) => { (field: string): (persisted: Persisted) => Effect.Effect<A, Schema.SchemaError, RD>; (persisted: Persisted, field: string): Effect.Effect<A, Schema.SchemaError, RD>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L382)

Since v4.0.0