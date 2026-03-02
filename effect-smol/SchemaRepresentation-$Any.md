Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Any

Schema codec for the `Any` representation node.

**Signature**

```ts
declare const $Any: Schema.Struct<{ readonly _tag: Schema.tag<"Any">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L885)

Since v4.0.0