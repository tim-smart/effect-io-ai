Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Arrays

Schema codec for the `Arrays` representation node.

**Signature**

```ts
declare const $Arrays: Schema.Struct<{ readonly _tag: Schema.tag<"Arrays">; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; readonly elements: Schema.$Array<Schema.Struct<{ readonly isOptional: Schema.Boolean; readonly type: Schema.suspend<$Representation>; readonly annotations: Schema.optional<Schema.decodeTo<Schema.$Record<Schema.String, Schema.Unknown>, Schema.$Record<Schema.String, Schema.Codec<PrimitiveTree, PrimitiveTree, never, never>>, never, never>>; }>>; readonly rest: Schema.$Array<Schema.suspend<$Representation>>; readonly checks: Schema.$Array<Schema.Codec<Check<{ readonly _tag: "isMinLength"; readonly minLength: number; } | { readonly _tag: "isMaxLength"; readonly maxLength: number; } | { readonly _tag: "isLengthBetween"; readonly minimum: number; readonly maximum: number; } | { readonly _tag: "isUnique"; }>, Check<{ readonly _tag: "isMinLength"; readonly minLength: number; } | { readonly _tag: "isMaxLength"; readonly maxLength: number; } | { readonly _tag: "isLengthBetween"; readonly minimum: number; readonly maximum: number; } | { readonly _tag: "isUnique"; }>, never, never>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1301)

Since v4.0.0