Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Unknown

Schema codec for the `Unknown` representation node.

**Signature**

```ts
declare const $Unknown: Schema.Struct<{ readonly _tag: Schema.tag<"Unknown">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L874)

Since v4.0.0