Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.StringMeta

Metadata union for string-specific validation checks (minLength, maxLength,
pattern, UUID, trimmed, etc.).

**See**

- `String`
- `Check`

**Signature**

```ts
type StringMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isStringFinite"
  | "isStringBigInt"
  | "isStringSymbol"
  | "isMinLength"
  | "isMaxLength"
  | "isPattern"
  | "isLengthBetween"
  | "isTrimmed"
  | "isUUID"
  | "isULID"
  | "isBase64"
  | "isBase64Url"
  | "isStartsWith"
  | "isEndsWith"
  | "isIncludes"
  | "isUppercased"
  | "isLowercased"
  | "isCapitalized"
  | "isUncapitalized"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L569)

Since v4.0.0