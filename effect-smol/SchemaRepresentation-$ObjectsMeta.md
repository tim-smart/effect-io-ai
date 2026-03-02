Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$ObjectsMeta

Schema codec for `ObjectsMeta`.

**Signature**

```ts
declare const $ObjectsMeta: Schema.Union<readonly [Schema.Struct<{ readonly _tag: Schema.tag<"isMinProperties">; readonly minProperties: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isMaxProperties">; readonly maxProperties: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isPropertiesLengthBetween">; readonly minimum: Schema.Int; readonly maximum: Schema.Int; }>, Schema.Struct<{ readonly _tag: Schema.tag<"isPropertyNames">; readonly propertyNames: Schema.suspend<$Representation>; }>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1361)

Since v4.0.0