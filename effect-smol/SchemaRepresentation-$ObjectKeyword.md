Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$ObjectKeyword

Schema codec for the `ObjectKeyword` representation node.

**Signature**

```ts
declare const $ObjectKeyword: Schema.Struct<{ readonly _tag: Schema.tag<"ObjectKeyword">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1235)

Since v4.0.0