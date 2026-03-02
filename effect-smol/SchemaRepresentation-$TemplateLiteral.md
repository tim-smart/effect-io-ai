Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$TemplateLiteral

Schema codec for the `TemplateLiteral` representation node.

**Signature**

```ts
declare const $TemplateLiteral: Schema.Struct<{ readonly _tag: Schema.tag<"TemplateLiteral">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly parts: Schema.$Array<Schema.suspend<$Representation>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1266)

Since v4.0.0