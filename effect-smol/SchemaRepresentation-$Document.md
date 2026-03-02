Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.$Document

Schema codec for `Document`. Use with `Schema.decodeUnknownSync` or
`Schema.encodeSync` to validate or serialize document data.

**Signature**

```ts
declare const $Document: Schema.Struct<{ readonly representation: $Representation; readonly references: Schema.$Record<Schema.String, $Representation>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1565)

Since v4.0.0