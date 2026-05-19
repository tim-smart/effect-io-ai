Package: `effect`<br />
Module: `Schema`<br />

## Schema.toJsonSchemaDocument

Returns a JSON Schema document using draft 2020-12.

The `options` parameter controls generation details such as additional
properties and synthesized check descriptions; it does not change the draft
target.

**Signature**

```ts
declare const toJsonSchemaDocument: (schema: Top, options?: ToJsonSchemaOptions) => JsonSchema.Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11737)

Since v4.0.0