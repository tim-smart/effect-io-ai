Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Document

Schema for `Document`.

**When to use**

Use to validate or serialize a single schema representation document with
`Schema.decodeUnknownSync` or `Schema.encodeSync`.

**Gotchas**

This codec validates document structure but does not resolve `$ref` keys
against `references`.

**See**

- `DocumentFromJson` for the JSON-string codec wrapper
- `$MultiDocument` for validating documents with multiple root representations

**Signature**

```ts
declare const $Document: Schema.Struct<{ readonly representation: $Representation; readonly references: Schema.$Record<Schema.String, $Representation>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1583)

Since v4.0.0