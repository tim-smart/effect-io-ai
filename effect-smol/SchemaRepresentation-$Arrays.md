Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Arrays

Schema for the `Arrays` representation node.

**Signature**

```ts
declare const $Arrays: Schema.Struct<{ readonly _tag: Schema.tag<"Arrays">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly elements: Schema.$Array<Schema.Struct<{ readonly isOptional: Schema.Boolean; readonly type: Schema.suspend<$Representation>; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>>; readonly rest: Schema.$Array<Schema.suspend<$Representation>>; readonly checks: Schema.$Array<Schema.Codec<Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMinLength">; readonly minLength: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMaxLength">; readonly maxLength: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isUnique">; }, "Type">>, Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMinLength">; readonly minLength: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMaxLength">; readonly maxLength: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isUnique">; }, "Type">>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1307)

Since v4.0.0