Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$StringMeta

Schema codec for `StringMeta`.

**Signature**

```ts
declare const $StringMeta: Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isStringFinite">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isStringBigInt">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isStringSymbol">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isTrimmed">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isUUID">; readonly regExp: Schema.RegExp; readonly version: Schema.UndefinedOr<Schema.Literals<readonly [1, 2, 3, 4, 5, 6, 7, 8]>>; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isULID">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isBase64">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isBase64Url">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isStartsWith">; readonly startsWith: Schema.String; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isEndsWith">; readonly endsWith: Schema.String; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isIncludes">; readonly includes: Schema.String; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isUppercased">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLowercased">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isCapitalized">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isUncapitalized">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMinLength">; readonly minLength: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMaxLength">; readonly maxLength: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isPattern">; readonly regExp: Schema.RegExp; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L998)

Since v4.0.0