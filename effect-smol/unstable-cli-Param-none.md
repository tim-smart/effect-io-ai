Package: `effect`<br />
Module: `Param`<br />

## Param.none

Creates an empty sentinel parameter that always fails to parse.

This is useful for creating placeholder parameters or for combinators.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create a none parameter for composition
const noneParam = Param.none(Param.flagKind)

// Often used in conditional parameter creation
const conditionalParam = process.env.NODE_ENV === "production"
  ? Param.string(Param.flagKind, "my-dev-flag")
  : Param.none(Param.flagKind)
```

**Signature**

```ts
declare const none: <Kind extends ParamKind>(kind: Kind) => Param<Kind, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L828)

Since v4.0.0