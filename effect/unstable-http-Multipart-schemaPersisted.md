Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.schemaPersisted

Creates a decoder for persisted multipart data using the supplied schema.

**Details**

The returned function decodes an unknown input into the schema output and fails
with `SchemaError` when validation fails.

**Signature**

```ts
declare const schemaPersisted: <A, I extends Partial<Persisted>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>) => (input: unknown, options?: ParseOptions) => Effect.Effect<A, Schema.SchemaError, RD>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L366)

Since v4.0.0