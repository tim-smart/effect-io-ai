Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$MultiDocument

Schema for `MultiDocument`.

**Signature**

```ts
declare const $MultiDocument: Schema.Struct<{ readonly representations: Schema.NonEmptyArray<$Representation>; readonly references: Schema.$Record<Schema.String, $Representation>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1661)

Since v4.0.0