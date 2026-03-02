Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Element

Schema codec for the `Element` type (positional tuple element).

**Signature**

```ts
declare const $Element: Schema.Struct<{ readonly isOptional: Schema.Boolean; readonly type: Schema.suspend<$Representation>; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1278)

Since v4.0.0