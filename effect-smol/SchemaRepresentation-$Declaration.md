Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Declaration

Schema codec for the `Declaration` representation node.

**Signature**

```ts
declare const $Declaration: Schema.Struct<{ readonly _tag: Schema.tag<"Declaration">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly typeParameters: Schema.$Array<Schema.suspend<$Representation>>; readonly checks: Schema.$Array<Schema.Codec<Check<{ readonly _tag: "isDateValid"; } | { readonly _tag: "isGreaterThanDate"; readonly exclusiveMinimum: Date; } | { readonly _tag: "isGreaterThanOrEqualToDate"; readonly minimum: Date; } | { readonly _tag: "isLessThanDate"; readonly exclusiveMaximum: Date; } | { readonly _tag: "isLessThanOrEqualToDate"; readonly maximum: Date; } | { readonly _tag: "isBetweenDate"; readonly minimum: Date; readonly maximum: Date; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; } | { readonly _tag: "isMinSize"; readonly minSize: number; } | { readonly _tag: "isMaxSize"; readonly maxSize: number; } | { readonly _tag: "isSizeBetween"; readonly minimum: number; readonly maximum: number; }>, Check<{ readonly _tag: "isDateValid"; } | { readonly _tag: "isGreaterThanDate"; readonly exclusiveMinimum: Date; } | { readonly _tag: "isGreaterThanOrEqualToDate"; readonly minimum: Date; } | { readonly _tag: "isLessThanDate"; readonly exclusiveMaximum: Date; } | { readonly _tag: "isLessThanOrEqualToDate"; readonly maximum: Date; } | { readonly _tag: "isBetweenDate"; readonly minimum: Date; readonly maximum: Date; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; } | { readonly _tag: "isMinSize"; readonly minSize: number; } | { readonly _tag: "isMaxSize"; readonly maxSize: number; } | { readonly _tag: "isSizeBetween"; readonly minimum: number; readonly maximum: number; }>, never, never>>; readonly encodedSchema: Schema.suspend<$Representation>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1498)

Since v4.0.0