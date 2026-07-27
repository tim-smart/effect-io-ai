Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toMultiDocument

Wraps a single representation document as a multi-document with one root.

**When to use**

Use when an API such as `toCodeDocument` requires a `MultiDocument`.

**Signature**

```ts
declare const toMultiDocument: (document: Document) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L747)

Since v4.0.0