Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.EncodingServices

Union of all encoding service requirements needed by the schemas in a struct
field map.

**Signature**

```ts
type EncodingServices<F> = { readonly [K in keyof F]: F[K]["EncodingServices"] }[keyof F]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3247)

Since v4.0.0