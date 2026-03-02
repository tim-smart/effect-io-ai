Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$DeclarationMeta

Schema codec for `DeclarationMeta`.

**Signature**

```ts
declare const $DeclarationMeta: Schema.Union<readonly [Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isDateValid">; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThanDate">; readonly exclusiveMinimum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualToDate">; readonly minimum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThanDate">; readonly exclusiveMaximum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThanOrEqualToDate">; readonly maximum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isBetweenDate">; readonly minimum: Schema.Date; readonly maximum: Schema.Date; readonly exclusiveMinimum: Schema.optional<Schema.Boolean>; readonly exclusiveMaximum: Schema.optional<Schema.Boolean>; }>]>, Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isMinSize">; readonly minSize: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMaxSize">; readonly maxSize: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isSizeBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }>]>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1487)

Since v4.0.0