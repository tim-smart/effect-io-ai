Package: `effect`<br />
Module: `Schema`<br />

## Schema.optionalKey

Schema type for an exact optional struct key. The key may be absent, but
when present must match the wrapped schema (no implicit `undefined`).
Produced by `optionalKey`.

**Signature**

```ts
export interface optionalKey<S extends Top> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    optionalKey<S>,
    S["~type.make.in"],
    S["Iso"],
    S["~type.parameters"],
    S["~type.make"],
    S["~type.mutability"],
    "optional",
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    "optional"
  >
{
  readonly "~rebuild.out": this
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1459)

Since v4.0.0