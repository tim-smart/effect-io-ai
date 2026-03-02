Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Literal

Schema codec for the `Literal` representation node.

**Signature**

```ts
declare const $Literal: Schema.Struct<{ readonly _tag: Schema.tag<"Literal">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly literal: Schema.Union<readonly [Schema.String, Schema.Finite, Schema.Boolean, Schema.BigInt]>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1211)

Since v4.0.0