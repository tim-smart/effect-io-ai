Package: `effect`<br />
Module: `Schema`<br />

## Schema.WithoutConstructorDefault

Constraint used to ensure a schema field does not already have a constructor default.

Only schemas that satisfy this constraint can be passed to `withConstructorDefault`.

**Signature**

```ts
export interface WithoutConstructorDefault {
  readonly "~type.constructor.default": "no-default"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4238)

Since v4.0.0