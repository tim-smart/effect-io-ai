Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJson

Projects a live single-root representation document and encodes it as JSON.

**When to use**

Use when you need a stable JSON value for storage or transport after calling `toRepresentation`.

**Gotchas**

Generic annotations that are not JSON are omitted. Invalid persistence identities and unsupported structural values throw an `Error` containing their representation path.

**See**

- `toRepresentation` for constructing the live document
- `toJsonMultiDocument` for documents with multiple roots

**Signature**

```ts
declare const toJson: (document: Document) => Schema.Json
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1043)

Since v4.0.0