Package: `effect`<br />
Module: `Param`<br />

## Param.Transform

Parameter node that rewrites another parameter's parser, allowing effectful
validation, fallback behavior, or error translation while preserving the same
parameter kind.

**Signature**

```ts
export interface Transform<Kind extends ParamKind, in out A, out B> extends Param<Kind, B> {
  readonly _tag: "Transform"
  readonly kind: Kind
  readonly param: Param<Kind, A>
  readonly f: (parse: Parse<A>) => Parse<B>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L225)

Since v4.0.0