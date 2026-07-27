Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJson

Decodes a persisted single-root representation document from JSON.

**When to use**

Use when reading a representation document from storage or transport before inspecting it or passing it to `fromRepresentation`.

**Gotchas**

Invalid documents throw a schema decoding error. Decoding does not reconstruct runtime callbacks.

**See**

- `toJson` for encoding a document
- `fromRepresentation` for reconstructing a runtime schema
- `fromJsonMultiDocument` for multiple roots sharing references

**Signature**

```ts
declare const fromJson: (input: Schema.Json) => Document
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1086)

Since v4.0.0