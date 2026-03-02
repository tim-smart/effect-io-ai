Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Number

Schema codec for the `Number` representation node.

**Signature**

```ts
declare const $Number: Schema.Struct<{ readonly _tag: Schema.tag<"Number">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly checks: Schema.$Array<Schema.Codec<Check<{ readonly _tag: "isInt"; } | { readonly _tag: "isMultipleOf"; readonly divisor: number; } | { readonly _tag: "isFinite"; } | { readonly _tag: "isGreaterThan"; readonly exclusiveMinimum: number; } | { readonly _tag: "isGreaterThanOrEqualTo"; readonly minimum: number; } | { readonly _tag: "isLessThan"; readonly exclusiveMaximum: number; } | { readonly _tag: "isLessThanOrEqualTo"; readonly maximum: number; } | { readonly _tag: "isBetween"; readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, Check<{ readonly _tag: "isInt"; } | { readonly _tag: "isMultipleOf"; readonly divisor: number; } | { readonly _tag: "isFinite"; } | { readonly _tag: "isGreaterThan"; readonly exclusiveMinimum: number; } | { readonly _tag: "isGreaterThanOrEqualTo"; readonly minimum: number; } | { readonly _tag: "isLessThan"; readonly exclusiveMaximum: number; } | { readonly _tag: "isLessThanOrEqualTo"; readonly maximum: number; } | { readonly _tag: "isBetween"; readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1115)

Since v4.0.0