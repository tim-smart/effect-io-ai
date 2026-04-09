Package: `effect`<br />
Module: `Param`<br />

## Param.variadic

Creates a variadic parameter that can be specified multiple times.

This is the base combinator for creating parameters that accept multiple values.
The min and max parameters are optional - if not provided, the parameter can be
specified any number of times (0 to infinity).

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Basic variadic parameter (0 to infinity)
const tags = Param.variadic(Param.string(Param.flagKind, "tag"))

// Variadic with minimum count
const inputs = Param.variadic(
  Param.string(Param.flagKind, "input"),
  { min: 1 } // at least 1 required
)

// Variadic with both min and max
const limited = Param.variadic(Param.string(Param.flagKind, "item"), {
  min: 2, // at least 2 times
  max: 2 // at most 5 times
})
```

**Signature**

```ts
declare const variadic: <Kind extends ParamKind, A>(self: Param<Kind, A>, options?: VariadicParamOptions | undefined) => Param<Kind, ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1302)

Since v4.0.0