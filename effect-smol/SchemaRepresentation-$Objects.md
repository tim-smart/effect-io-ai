Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Objects

Schema for the `Objects` representation node.

**Signature**

```ts
declare const $Objects: Schema.Struct<{ readonly _tag: Schema.tag<"Objects">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly propertySignatures: Schema.$Array<Schema.Struct<{ readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly name: Schema.Union<readonly [Schema.Finite, Schema.Symbol, Schema.String]>; readonly type: Schema.suspend<$Representation>; readonly isOptional: Schema.Boolean; readonly isMutable: Schema.Boolean; }>>; readonly indexSignatures: Schema.$Array<Schema.Struct<{ readonly parameter: Schema.suspend<$Representation>; readonly type: Schema.suspend<$Representation>; }>>; readonly checks: Schema.$Array<Schema.Codec<Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMinProperties">; readonly minProperties: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMaxProperties">; readonly maxProperties: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isPropertiesLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isPropertyNames">; readonly propertyNames: Schema.suspend<$Representation>; }, "Type">>, Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMinProperties">; readonly minProperties: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMaxProperties">; readonly maxProperties: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isPropertiesLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isPropertyNames">; readonly propertyNames: Schema.suspend<$Representation>; }, "Type">>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1379)

Since v4.0.0