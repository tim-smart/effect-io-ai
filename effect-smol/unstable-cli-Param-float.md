Package: `effect`<br />
Module: `Param`<br />

## Param.float

Creates a floating-point number parameter.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create a float flag
const rateFlag = Param.float(Param.flagKind, "rate")

// Create a float argument
const thresholdArg = Param.float(Param.argumentKind, "threshold")

// Usage in CLI: --rate 0.95 or as positional argument: 3.14159
```

**Signature**

```ts
declare const float: <const Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L402)

Since v4.0.0