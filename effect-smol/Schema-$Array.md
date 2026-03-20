Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Array

Schema type for a `ReadonlyArray`. Produced by `Array`.

**Signature**

```ts
export interface $Array<S extends Top> extends
  Bottom<
    ReadonlyArray<S["Type"]>,
    ReadonlyArray<S["Encoded"]>,
    S["DecodingServices"],
    S["EncodingServices"],
    AST.Arrays,
    $Array<S>,
    ReadonlyArray<S["~type.make"]>,
    ReadonlyArray<S["Iso"]>
  >
{
  readonly "~rebuild.out": this
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3200)

Since v4.0.0