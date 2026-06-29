Package: `effect`<br />
Module: `Schema`<br />

## Schema.middlewareEncoding

Type-level representation returned by `middlewareEncoding`.

**Signature**

```ts
export interface middlewareEncoding<S extends Constraint, RE> extends
  BottomLazy<
    S["ast"],
    middlewareEncoding<S, RE>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": RE
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5163)

Since v4.0.0