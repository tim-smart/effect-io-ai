Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$PropertySignature

Schema codec for the `PropertySignature` type.

**Signature**

```ts
declare const $PropertySignature: Schema.Struct<{ readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly name: Schema.Union<readonly [Schema.Finite, Schema.Symbol, Schema.String]>; readonly type: Schema.suspend<$Representation>; readonly isOptional: Schema.Boolean; readonly isMutable: Schema.Boolean; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1315)

Since v4.0.0