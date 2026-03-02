Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Null

Schema codec for the `Null` representation node.

**Signature**

```ts
declare const $Null: Schema.Struct<{ readonly _tag: Schema.tag<"Null">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L830)

Since v4.0.0