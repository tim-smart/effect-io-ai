Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Never

Schema codec for the `Never` representation node.

**Signature**

```ts
declare const $Never: Schema.Struct<{ readonly _tag: Schema.tag<"Never">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L863)

Since v4.0.0