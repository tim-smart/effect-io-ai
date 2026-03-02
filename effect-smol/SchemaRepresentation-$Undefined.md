Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Undefined

Schema codec for the `Undefined` representation node.

**Signature**

```ts
declare const $Undefined: Schema.Struct<{ readonly _tag: Schema.tag<"Undefined">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L841)

Since v4.0.0