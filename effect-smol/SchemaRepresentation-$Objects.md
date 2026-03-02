Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Objects

Schema codec for the `Objects` representation node.

**Signature**

```ts
declare const $Objects: Schema.Struct<{ readonly _tag: Schema.tag<"Objects">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly propertySignatures: Schema.$Array<Schema.Struct<{ readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly name: Schema.Union<readonly [Schema.Finite, Schema.Symbol, Schema.String]>; readonly type: Schema.suspend<$Representation>; readonly isOptional: Schema.Boolean; readonly isMutable: Schema.Boolean; }>>; readonly indexSignatures: Schema.$Array<Schema.Struct<{ readonly parameter: Schema.suspend<$Representation>; readonly type: Schema.suspend<$Representation>; }>>; readonly checks: Schema.$Array<Schema.Codec<Check<{ readonly _tag: "isMinProperties"; readonly minProperties: number; } | { readonly _tag: "isMaxProperties"; readonly maxProperties: number; } | { readonly _tag: "isPropertiesLengthBetween"; readonly minimum: number; readonly maximum: number; } | { readonly _tag: "isPropertyNames"; readonly propertyNames: Representation; }>, Check<{ readonly _tag: "isMinProperties"; readonly minProperties: number; } | { readonly _tag: "isMaxProperties"; readonly maxProperties: number; } | { readonly _tag: "isPropertiesLengthBetween"; readonly minimum: number; readonly maximum: number; } | { readonly _tag: "isPropertyNames"; readonly propertyNames: Representation; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1374)

Since v4.0.0