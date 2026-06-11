Package: `effect`<br />
Module: `Layer`<br />

## Layer.Any

A type-level constraint for working with any `Layer` type.

**When to use**

Use to constrain generic parameters or layer collections to any `Layer`
value while preserving its provided, error, and required service types for
inference.

**Details**

This interface is used to constrain generic types to `Layer` values without
specifying exact type parameters.

**See**

- `Layer` for the concrete layer interface
- `Services` for extracting required services from a layer type
- `Error` for extracting construction errors from a layer type
- `Success` for extracting provided services from a layer type

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L127)

Since v3.9.0