Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.EncodingServices

Union of the encoding service requirements of the base object schema and all
rest record schemas.

**Signature**

```ts
type EncodingServices<S, Records> = | S["EncodingServices"]
    | { [K in keyof Records]: Records[K]["EncodingServices"] }[number]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3196)

Since v4.0.0