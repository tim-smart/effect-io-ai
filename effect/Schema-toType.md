Package: `effect`<br />
Module: `Schema`<br />

## Schema.toType

Type-level representation returned by `toType`.

**Signature**

```ts
export interface toType<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    toType<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": S["Type"]
  readonly "DecodingServices": never
  readonly "EncodingServices": never
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2480)

Since v4.0.0