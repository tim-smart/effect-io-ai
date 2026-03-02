Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Void

Schema codec for the `Void` representation node.

**Signature**

```ts
declare const $Void: Schema.Struct<{ readonly _tag: Schema.tag<"Void">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L852)

Since v4.0.0