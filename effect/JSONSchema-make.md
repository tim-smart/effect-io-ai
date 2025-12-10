Package: `effect`<br />
Module: `JSONSchema`<br />

## JSONSchema.make

Generates a JSON Schema from a schema.

**Options**

- `target`: The target JSON Schema version. Possible values are:
  - `"jsonSchema7"`: JSON Schema draft-07 (default behavior).
  - `"jsonSchema2019-09"`: JSON Schema draft-2019-09.
  - `"jsonSchema2020-12"`: JSON Schema draft-2020-12.
  - `"openApi3.1"`: OpenAPI 3.1.

**Signature**

```ts
declare const make: <A, I, R>(schema: Schema.Schema<A, I, R>, options?: { readonly target?: Target | undefined; }) => JsonSchema7Root
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/JSONSchema.ts#L264)

Since v3.10.0