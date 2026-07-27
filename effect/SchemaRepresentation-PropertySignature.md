Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.PropertySignature

A property signature.

**Details**

The live representation stores the native property key. Persistent codecs
add an explicit type discriminator when encoding it.

**Gotchas**

Local symbols can be represented while the schema is live, but persistent
codecs reject them because they cannot be reconstructed by identity.

**Signature**

```ts
export interface PropertySignature {
  readonly name: PropertyKey
  readonly type: Representation
  readonly isOptional: boolean
  readonly isMutable: boolean
  readonly annotations?: Schema.Annotations.Annotations | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L353)

Since v4.0.0