Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toMultiDocument

Wraps a single `Document` as a `MultiDocument` with one
representation.

**When to use**

Use when you need to pass a single schema representation `Document` where an
API expects a `MultiDocument`.

**See**

- `Document`
- `MultiDocument`

**Signature**

```ts
declare const toMultiDocument: (document: Document) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1785)

Since v4.0.0