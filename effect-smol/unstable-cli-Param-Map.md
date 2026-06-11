Package: `effect`<br />
Module: `Param`<br />

## Param.Map

Parameter node that maps the successfully parsed value of another parameter
with a pure function.

**Signature**

```ts
export interface Map<Kind extends ParamKind, in out A, out B> extends Param<Kind, B> {
  readonly _tag: "Map"
  readonly kind: Kind
  readonly param: Param<Kind, A>
  readonly f: (value: A) => B
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L222)

Since v4.0.0