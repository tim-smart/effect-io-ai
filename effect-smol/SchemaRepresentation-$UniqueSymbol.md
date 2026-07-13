Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$UniqueSymbol

Schema for the `UniqueSymbol` representation node.

**Signature**

```ts
declare const $UniqueSymbol: Schema.Struct<{ readonly _tag: Schema.tag<"UniqueSymbol">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly symbol: Schema.Symbol; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1229)

Since v4.0.0