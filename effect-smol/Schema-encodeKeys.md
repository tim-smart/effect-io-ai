Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeKeys

Type-level representation returned by `encodeKeys`.

**Signature**

```ts
export interface encodeKeys<
  S extends Constraint & { readonly fields: Struct.Fields },
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3453)

Since v4.0.0