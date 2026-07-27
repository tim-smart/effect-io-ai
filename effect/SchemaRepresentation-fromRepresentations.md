Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromRepresentations

Reconstructs multiple runtime schemas and their shared definitions from a representation multi-document.

**When to use**

Use when every root and named definition must be rebuilt in one shared reference environment.

**Gotchas**

Every definition is revived, including definitions not reachable from a root. Revivers are resolved locally by `id`; none are installed implicitly.

**See**

- `fromJsonMultiDocument` for decoding a persisted multi-document
- `fromRepresentation` for a single root

**Signature**

```ts
declare const fromRepresentations: (document: MultiDocument, options: { readonly revivers: ReadonlyArray<AnyReviver>; }) => SchemaMultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1153)

Since v4.0.0