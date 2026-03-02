Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.schemaRecord

Extract a record of key-value pairs from the `UrlParams`.

**Signature**

```ts
export interface schemaRecord extends
  Schema.decodeTo<
    Schema.$Record<Schema.String, Schema.Union<readonly [Schema.String, Schema.NonEmptyArray<Schema.String>]>>,
    UrlParamsSchema,
    never,
    never
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L483)

Since v4.0.0