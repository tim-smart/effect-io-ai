Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Suspend

Schema codec for the `Suspend` representation node.

**Signature**

```ts
declare const $Suspend: Schema.Struct<{ readonly _tag: Schema.tag<"Suspend">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly checks: Schema.Tuple<readonly []>; readonly thunk: Schema.suspend<$Representation>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1512)

Since v4.0.0