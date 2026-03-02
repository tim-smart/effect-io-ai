Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.ObjectsMeta

Metadata union for object-specific validation checks (minProperties,
maxProperties, propertiesLength, propertyNames).

**See**

- `Objects`
- `Check`

**Signature**

```ts
type ObjectsMeta = | Schema.Annotations.BuiltInMetaDefinitions[
    | "isMinProperties"
    | "isMaxProperties"
    | "isPropertiesLengthBetween"
  ]
  | { readonly _tag: "isPropertyNames"; readonly propertyNames: Representation }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L656)

Since v4.0.0