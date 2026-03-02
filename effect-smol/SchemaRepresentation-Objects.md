Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Objects

An object/struct type with named properties and optional index signatures.

- `propertySignatures` are the explicitly named fields.
- `indexSignatures` define catch-all key/value types (like `Record<string, T>`).
- `checks` holds object-specific constraints (minProperties, maxProperties, etc.).

**See**

- `PropertySignature`
- `IndexSignature`
- `ObjectsMeta`

**Signature**

```ts
export interface Objects {
  readonly _tag: "Objects"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly propertySignatures: ReadonlyArray<PropertySignature>
  readonly indexSignatures: ReadonlyArray<IndexSignature>
  readonly checks: ReadonlyArray<Check<ObjectsMeta>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L419)

Since v4.0.0