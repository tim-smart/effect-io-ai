Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$NumberMeta

Schema codec for `NumberMeta`.

**Signature**

```ts
declare const $NumberMeta: Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isInt">; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMultipleOf">; readonly divisor: Schema.Finite; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isFinite">; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThan">; readonly exclusiveMinimum: Schema.Finite; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualTo">; readonly minimum: Schema.Finite; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThan">; readonly exclusiveMaximum: Schema.Finite; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThanOrEqualTo">; readonly maximum: Schema.Finite; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isBetween">; readonly minimum: Schema.Finite; readonly maximum: Schema.Finite; readonly exclusiveMinimum: Schema.optional<Schema.Boolean>; readonly exclusiveMaximum: Schema.optional<Schema.Boolean>; }>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1098)

Since v4.0.0