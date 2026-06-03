Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Annotations

Schema for serializing public `Schema.Annotations.Annotations` values. It
filters out internal annotation keys and non-primitive values during
encoding.

**When to use**

Use to serialize schema annotations in representation schemas while retaining
only primitive-tree metadata.

**Details**

Decoding is passthrough. Encoding removes internal annotation keys and values
that are not accepted by `$PrimitiveTree`.

**See**

- `$PrimitiveTree` for the codec used to filter annotation values

**Signature**

```ts
declare const $Annotations: Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L870)

Since v4.0.0