Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonMultiDocument

Decodes a persisted multi-root representation document from JSON.

**When to use**

Use when reading multiple representation roots that share references before inspecting them or passing them to `fromRepresentations`.

**Gotchas**

Invalid documents throw a schema decoding error. Decoding does not reconstruct runtime callbacks.

**See**

- `toJsonMultiDocument` for encoding a multi-document
- `fromRepresentations` for reconstructing runtime schemas
- `fromJson` for a single root

**Signature**

```ts
declare const fromJsonMultiDocument: (input: Schema.Json) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1108)

Since v4.0.0