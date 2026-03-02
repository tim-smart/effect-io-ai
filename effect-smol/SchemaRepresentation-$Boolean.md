Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Boolean

Schema codec for the `Boolean` representation node.

**Signature**

```ts
declare const $Boolean: Schema.Struct<{ readonly _tag: Schema.tag<"Boolean">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1127)

Since v4.0.0