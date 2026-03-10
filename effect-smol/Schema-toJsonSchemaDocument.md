Package: `effect`<br />
Module: `Schema`<br />

## Schema.toJsonSchemaDocument

Returns a JSON Schema Document (draft-2020-12).

You can use the `options` parameter to return a different target JSON Schema.

**Signature**

```ts
declare const toJsonSchemaDocument: (schema: Top, options?: ToJsonSchemaOptions) => JsonSchema.Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8626)

Since v4.0.0