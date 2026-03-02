Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.ArraysMeta

Metadata union for array-specific validation checks (minLength, maxLength,
length, unique).

**See**

- `Arrays`
- `Check`

**Signature**

```ts
type ArraysMeta = Schema.Annotations.BuiltInMetaDefinitions[
  | "isMinLength"
  | "isMaxLength"
  | "isLengthBetween"
  | "isUnique"
]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L639)

Since v4.0.0