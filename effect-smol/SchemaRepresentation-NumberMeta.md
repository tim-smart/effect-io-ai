Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.NumberMeta

Metadata union for number-specific validation checks (int, finite,
min, max, multipleOf, between).

**See**

- `Number`
- `Check`

**Signature**

```ts
type NumberMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isInt"
  | "isFinite"
  | "isMultipleOf"
  | "isGreaterThanOrEqualTo"
  | "isLessThanOrEqualTo"
  | "isGreaterThan"
  | "isLessThan"
  | "isBetween"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L601)

Since v4.0.0