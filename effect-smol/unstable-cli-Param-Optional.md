Package: `effect`<br />
Module: `Param`<br />

## Param.Optional

Parameter node that turns a missing argument or flag into `Option.none()` and
a present parsed value into `Option.some(value)`.

**Signature**

```ts
export interface Optional<Kind extends ParamKind, A> extends Param<Kind, Option.Option<A>> {
  readonly _tag: "Optional"
  readonly kind: Kind
  readonly param: Param<Kind, A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L246)

Since v4.0.0