Package: `effect`<br />
Module: `Layer`<br />

## Layer.Any

A type-level constraint for working with any `Layer` type.

**Details**

This interface is used to constrain generic types to `Layer` values without
specifying exact type parameters.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: {
    readonly _ROut: any
    readonly _E: any
    readonly _RIn: any
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L129)

Since v3.9.0