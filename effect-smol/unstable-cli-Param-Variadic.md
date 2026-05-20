Package: `effect`<br />
Module: `Param`<br />

## Param.Variadic

Parameter node that parses another parameter zero or more times and returns
all parsed values as an array, respecting optional minimum and maximum
occurrence bounds.

**Signature**

```ts
export interface Variadic<Kind extends ParamKind, A> extends Param<Kind, ReadonlyArray<A>> {
  readonly _tag: "Variadic"
  readonly kind: Kind
  readonly param: Param<Kind, A>
  readonly min: Option.Option<number>
  readonly max: Option.Option<number>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L261)

Since v4.0.0