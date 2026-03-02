Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toMultiDocument

Wraps a single `Document` as a `MultiDocument` with one
representation.

- Use when an API expects a `MultiDocument` but you only have a single
  `Document`.
- Pure function; does not mutate the input.

**See**

- `Document`
- `MultiDocument`

**Signature**

```ts
declare const toMultiDocument: (document: Document) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1675)

Since v4.0.0