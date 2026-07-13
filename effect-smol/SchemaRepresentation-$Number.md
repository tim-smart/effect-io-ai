Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Number

Schema for the `Number` representation node.

**Signature**

```ts
declare const $Number: Schema.Struct<{ readonly _tag: Schema.tag<"Number">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly checks: Schema.$Array<Schema.Codec<Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isInt">; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMultipleOf">; readonly divisor: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isFinite">; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThan">; readonly exclusiveMinimum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualTo">; readonly minimum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThan">; readonly exclusiveMaximum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanOrEqualTo">; readonly maximum: Schema.Finite; }, "Type"> | { readonly _tag: "isBetween"; readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isInt">; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isMultipleOf">; readonly divisor: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isFinite">; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThan">; readonly exclusiveMinimum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualTo">; readonly minimum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThan">; readonly exclusiveMaximum: Schema.Finite; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanOrEqualTo">; readonly maximum: Schema.Finite; }, "Type"> | { readonly _tag: "isBetween"; readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1109)

Since v4.0.0