Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeKeys

Schema type for a struct with renamed encoded keys. Produced by
`encodeKeys`.

**Signature**

```ts
export interface encodeKeys<
  S extends Top & { readonly fields: Struct.Fields },
  M extends { readonly [K in keyof S["fields"]]?: PropertyKey }
> extends
  decodeTo<
    S,
    Struct<
      {
        [
          K in keyof S["fields"] as K extends keyof M ? M[K] extends PropertyKey ? M[K] : K : K
        ]: toEncoded<S["fields"][K]>
      }
    >
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2526)

Since v4.0.0