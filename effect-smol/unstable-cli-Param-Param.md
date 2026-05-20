Package: `effect`<br />
Module: `Param`<br />

## Param.Param

Polymorphic CLI parameter shared by `Argument` and `Flag`.

**Details**

A parameter knows whether it consumes positional arguments or flags and
parses a `ParsedArgs` value into its typed result.

**Signature**

```ts
export interface Param<Kind extends ParamKind, out A> extends Param.Variance<A> {
  readonly _tag: "Single" | "Map" | "Transform" | "Optional" | "Variadic"
  readonly kind: Kind
  readonly parse: Parse<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L61)

Since v4.0.0