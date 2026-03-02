Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Enum

Schema codec for the `Enum` representation node.

**Signature**

```ts
declare const $Enum: Schema.Struct<{ readonly _tag: Schema.tag<"Enum">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly enums: Schema.$Array<Schema.Tuple<readonly [Schema.String, Schema.Union<readonly [Schema.String, Schema.Number]>]>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1246)

Since v4.0.0