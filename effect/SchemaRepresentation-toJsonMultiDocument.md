Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonMultiDocument

Projects a live multi-root representation document and encodes it as JSON.

**When to use**

Use when you need one JSON value for multiple live roots that share a reference environment.

**Gotchas**

The root order and shared reference keys are preserved, while non-JSON generic annotations are omitted.

**See**

- `toRepresentations` for constructing the live multi-document
- `toJson` for a single-root document

**Signature**

```ts
declare const toJsonMultiDocument: (document: MultiDocument) => Schema.Json
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1064)

Since v4.0.0