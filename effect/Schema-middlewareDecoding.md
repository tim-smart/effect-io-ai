Package: `effect`<br />
Module: `Schema`<br />

## Schema.middlewareDecoding

Type-level representation returned by `middlewareDecoding`.

**Signature**

```ts
export interface middlewareDecoding<S extends Constraint, RD> extends
  BottomLazy<
    S["ast"],
    middlewareDecoding<S, RD>,
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
  readonly "DecodingServices": RD
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5146)

Since v4.0.0