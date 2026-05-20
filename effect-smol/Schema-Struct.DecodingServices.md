Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.DecodingServices

Union of all decoding service requirements needed by the schemas in a struct
field map.

**Signature**

```ts
type DecodingServices<F> = { readonly [K in keyof F]: F[K]["DecodingServices"] }[keyof F]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2594)

Since v4.0.0