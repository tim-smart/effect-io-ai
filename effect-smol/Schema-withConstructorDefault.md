Package: `effect`<br />
Module: `Schema`<br />

## Schema.withConstructorDefault

Schema type returned by `withConstructorDefault` after attaching a default used
by constructor helpers.

**Details**

The default affects `make` and related constructor helpers only; decoding and
encoding still use the original schema behavior. The schema is marked as
already having a constructor default so another constructor default cannot be
added.

**See**

- `withConstructorDefault` for the constructor

**Signature**

```ts
export interface withConstructorDefault<S extends Top & WithoutConstructorDefault> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    withConstructorDefault<S>,
    S["~type.make.in"],
    S["Iso"],
    S["~type.parameters"],
    S["~type.make"],
    S["~type.mutability"],
    S["~type.optionality"],
    "with-default",
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5188)

Since v3.10.0