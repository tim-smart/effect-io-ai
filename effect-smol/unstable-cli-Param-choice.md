Package: `effect`<br />
Module: `Param`<br />

## Param.choice

Constructs command-line params that represent a choice between several
string inputs.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

const logLevel = Param.choice(Param.flagKind, "log-level", [
  "debug",
  "info",
  "warn",
  "error"
])
```

**Signature**

```ts
declare const choice: <const Kind extends ParamKind, const Choices extends ReadonlyArray<string>>(kind: Kind, name: string, choices: Choices) => Param<Kind, Choices[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L504)

Since v4.0.0