Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromRepresentation

Reconstructs a runtime schema from a representation document.

**When to use**

Use when you have decoded or constructed a document whose declaration and check annotations may require revivers.

**Gotchas**

Revivers are resolved locally by `id`; none are installed implicitly. Reviver results are used directly, and exceptions raised by a reviver pass through unchanged.

**See**

- `fromJson` for decoding a persisted document
- `fromRepresentations` for multiple roots sharing references

**Signature**

```ts
declare const fromRepresentation: (document: Document, options: { readonly revivers: ReadonlyArray<AnyReviver>; }) => Schema.Top
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1129)

Since v4.0.0