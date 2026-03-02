Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Annotations

Schema codec for `Schema.Annotations.Annotations`. Filters out internal
annotation keys and non-primitive values during encoding.

**Signature**

```ts
declare const $Annotations: Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L809)

Since v4.0.0