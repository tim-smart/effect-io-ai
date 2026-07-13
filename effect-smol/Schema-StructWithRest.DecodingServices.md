Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.DecodingServices

Union of the decoding service requirements of the base object schema and all
rest record schemas.

**Signature**

```ts
type DecodingServices<S, Records> = Services<
    S,
    Records,
    "DecodingServices"
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3938)

Since v4.0.0