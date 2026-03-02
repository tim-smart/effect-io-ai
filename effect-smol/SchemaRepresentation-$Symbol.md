Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Symbol

Schema codec for the `Symbol` representation node.

**Signature**

```ts
declare const $Symbol: Schema.Struct<{ readonly _tag: Schema.tag<"Symbol">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1186)

Since v4.0.0