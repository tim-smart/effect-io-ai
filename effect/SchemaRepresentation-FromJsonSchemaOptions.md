Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.FromJsonSchemaOptions

Options for importing JSON Schema Draft 2020-12 documents.

**When to use**

Use when each JSON Schema node must be transformed before it is translated.

**Gotchas**

`onEnter` must return a JSON Schema object. Its result is used directly, and exceptions raised by the callback pass through unchanged.

**Signature**

```ts
export interface FromJsonSchemaOptions {
  readonly onEnter?: ((schema: JsonSchema.JsonSchema) => JsonSchema.JsonSchema) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L623)

Since v4.0.0