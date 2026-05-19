Package: `effect`<br />
Module: `Param`<br />

## Param.none

Creates an empty sentinel parameter that always fails to parse.

This is useful for creating placeholder parameters or for combinators.

**Example** (Creating sentinel parameters)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

const disabledDebugParam = Param.none(Param.flagKind)

const makeDebugParam = (enableDebug: boolean) =>
  enableDebug ? Param.string(Param.flagKind, "debug") : disabledDebugParam

console.log(makeDebugParam(true) === disabledDebugParam) // false
console.log(makeDebugParam(false) === disabledDebugParam) // true
```

**Signature**

```ts
declare const none: <Kind extends ParamKind>(kind: Kind) => Param<Kind, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L920)

Since v4.0.0