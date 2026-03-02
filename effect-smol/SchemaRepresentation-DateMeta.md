Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.DateMeta

Metadata union for Date-specific validation checks (valid, min, max, between).

**See**

- `Declaration`
- `DeclarationMeta`

**Signature**

```ts
type DateMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isDateValid"
  | "isGreaterThanDate"
  | "isGreaterThanOrEqualToDate"
  | "isLessThanDate"
  | "isLessThanOrEqualToDate"
  | "isBetweenDate"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L673)

Since v4.0.0