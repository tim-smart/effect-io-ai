Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$BigInt

Schema for the `BigInt` representation node.

**When to use**

Use to encode, decode, or validate serialized `BigInt` representation nodes,
not application `bigint` values.

**Details**

Accepts representation nodes with `_tag: "BigInt"`, optional annotations,
and bigint-specific validation metadata in `checks`.

**See**

- `BigIntMeta` for the metadata accepted by the `checks` array

**Signature**

```ts
declare const $BigInt: Schema.Struct<{ readonly _tag: Schema.tag<"BigInt">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly checks: Schema.$Array<Schema.Codec<Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanBigInt">; readonly exclusiveMinimum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualToBigInt">; readonly minimum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanBigInt">; readonly exclusiveMaximum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanOrEqualToBigInt">; readonly maximum: Schema.BigInt; }, "Type"> | { readonly _tag: "isBetweenBigInt"; readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, Check<Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanBigInt">; readonly exclusiveMinimum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualToBigInt">; readonly minimum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanBigInt">; readonly exclusiveMaximum: Schema.BigInt; }, "Type"> | Schema.Struct.ReadonlySide<{ readonly _tag: Schema.tag<"isLessThanOrEqualToBigInt">; readonly maximum: Schema.BigInt; }, "Type"> | { readonly _tag: "isBetweenBigInt"; readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1180)

Since v4.0.0