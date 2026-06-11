Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.schemaPersisted

Creates a decoder for persisted multipart data using the supplied schema.

**Details**

The returned function decodes an unknown input into the schema output and fails
with `SchemaError` when validation fails.

**Signature**

```ts
declare const schemaPersisted: <A, I extends Partial<Persisted>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>) => (input: unknown, options?: ParseOptions) => Effect.Effect<A, Schema.SchemaError, RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L336)

Since v4.0.0