Package: `effect`<br />
Module: `Param`<br />

## Param.none

Creates an empty sentinel parameter that always fails to parse.

**When to use**

Use when you need an empty CLI parameter sentinel for optional parameter
construction or internal combinators.

**Example** (Creating sentinel parameters)

```ts
import { Param } from "effect/unstable/cli"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L896)

Since v4.0.0