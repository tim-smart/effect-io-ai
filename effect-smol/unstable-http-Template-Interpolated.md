Package: `effect`<br />
Module: `Template`<br />

## Template.Interpolated

Value accepted by the string template constructor.

**Details**

Interpolations can be primitive values, optional primitive values, or effects
that produce primitive values.

**Signature**

```ts
type Interpolated = | Primitive
  | Option.Option<Primitive>
  | Effect.Effect<Primitive, any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L48)

Since v4.0.0