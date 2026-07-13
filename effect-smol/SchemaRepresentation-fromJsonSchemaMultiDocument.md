Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaMultiDocument

Parses a Draft 2020-12 JSON Schema multi-document into a
`MultiDocument`.

**When to use**

Use when you need to import a Draft 2020-12 JSON Schema multi-document whose
schemas share definitions.

**Details**

`options.onEnter` is an optional hook called on each JSON Schema node before
processing.

**Gotchas**

JSON Schema import is best-effort. Some JSON Schema constructs do not map
exactly to Effect schema representations, and importing schemas previously
emitted by `toJsonSchemaMultiDocument` may produce equivalent approximations
rather than the original representation shapes.

This throws if a `$ref` cannot be resolved.

**See**

- `MultiDocument`
- `toJsonSchemaMultiDocument`
- `fromJsonSchemaDocument`

**Signature**

```ts
declare const fromJsonSchemaMultiDocument: (document: JsonSchema.MultiDocument<"draft-2020-12">, options?: { readonly onEnter?: ((js: JsonSchema.JsonSchema) => JsonSchema.JsonSchema) | undefined; }) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L3039)

Since v4.0.0