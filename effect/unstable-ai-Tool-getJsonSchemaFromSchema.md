Package: `effect`<br />
Module: `Tool`<br />

## Tool.getJsonSchemaFromSchema

Generates a JSON Schema from an Effect `Schema`.

**Details**

If a `CodecTransformer` is supplied, the transformed schema's JSON Schema is
returned. Otherwise, the schema is converted with
`Schema.toJsonSchemaDocument` and any generated definitions are attached as
`$defs`.

**Signature**

```ts
declare const getJsonSchemaFromSchema: <S extends Schema.Constraint>(schema: S, options?: { readonly transformer?: CodecTransformer; }) => JsonSchema.JsonSchema
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tool.ts#L1666)

Since v4.0.0