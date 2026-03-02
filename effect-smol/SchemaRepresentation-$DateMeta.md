Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$DateMeta

Schema codec for `DateMeta`.

**Signature**

```ts
declare const $DateMeta: Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isDateValid">; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThanDate">; readonly exclusiveMinimum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isGreaterThanOrEqualToDate">; readonly minimum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThanDate">; readonly exclusiveMaximum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLessThanOrEqualToDate">; readonly maximum: Schema.Date; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isBetweenDate">; readonly minimum: Schema.Date; readonly maximum: Schema.Date; readonly exclusiveMinimum: Schema.optional<Schema.Boolean>; readonly exclusiveMaximum: Schema.optional<Schema.Boolean>; }>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1444)

Since v4.0.0