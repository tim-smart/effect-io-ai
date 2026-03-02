Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Union

Schema codec for the `Union` representation node.

**Signature**

```ts
declare const $Union: Schema.Struct<{ readonly _tag: Schema.tag<"Union">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly types: Schema.$Array<Schema.suspend<$Representation>>; readonly mode: Schema.Literals<readonly ["anyOf", "oneOf"]>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1388)

Since v4.0.0