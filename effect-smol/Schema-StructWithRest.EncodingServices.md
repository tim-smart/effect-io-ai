Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.EncodingServices

Union of the encoding service requirements of the base object schema and all
rest record schemas.

**Signature**

```ts
type EncodingServices<S, Records> = Services<
    S,
    Records,
    "EncodingServices"
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3750)

Since v4.0.0