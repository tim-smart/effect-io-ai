Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$BigInt

Schema codec for the `BigInt` representation node.

**Signature**

```ts
declare const $BigInt: Schema.Struct<{ readonly _tag: Schema.tag<"BigInt">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly checks: Schema.$Array<Schema.Codec<Check<{ readonly _tag: "isGreaterThanBigInt"; readonly exclusiveMinimum: bigint; } | { readonly _tag: "isGreaterThanOrEqualToBigInt"; readonly minimum: bigint; } | { readonly _tag: "isLessThanBigInt"; readonly exclusiveMaximum: bigint; } | { readonly _tag: "isLessThanOrEqualToBigInt"; readonly maximum: bigint; } | { readonly _tag: "isBetweenBigInt"; readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, Check<{ readonly _tag: "isGreaterThanBigInt"; readonly exclusiveMinimum: bigint; } | { readonly _tag: "isGreaterThanOrEqualToBigInt"; readonly minimum: bigint; } | { readonly _tag: "isLessThanBigInt"; readonly exclusiveMaximum: bigint; } | { readonly _tag: "isLessThanOrEqualToBigInt"; readonly maximum: bigint; } | { readonly _tag: "isBetweenBigInt"; readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1174)

Since v4.0.0