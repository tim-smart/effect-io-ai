Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.SizeMeta

Metadata union for size-based validation checks (minSize, maxSize, size).
Used for collection types like `Set`, `Map`.

**See**

- `Declaration`
- `DeclarationMeta`

**Signature**

```ts
type SizeMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isMinSize"
  | "isMaxSize"
  | "isSizeBetween"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L692)

Since v4.0.0