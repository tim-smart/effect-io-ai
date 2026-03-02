Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$SizeMeta

Schema codec for `SizeMeta`.

**Signature**

```ts
declare const $SizeMeta: Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isMinSize">; readonly minSize: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMaxSize">; readonly maxSize: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isSizeBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1475)

Since v4.0.0