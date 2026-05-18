Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.schemaJson

Creates a decoder for a JSON-encoded field in persisted multipart data.

The selected field is parsed from a JSON string and decoded with the supplied
schema.

**Signature**

```ts
declare const schemaJson: <A, I, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => { (field: string): (persisted: Persisted) => Effect.Effect<A, Schema.SchemaError, RD>; (persisted: Persisted, field: string): Effect.Effect<A, Schema.SchemaError, RD>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L336)

Since v4.0.0