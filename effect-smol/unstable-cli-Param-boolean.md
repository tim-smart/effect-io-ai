Package: `effect`<br />
Module: `Param`<br />

## Param.boolean

Creates a boolean parameter.

**Example** (Creating boolean parameters)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

// Create a boolean flag
const verboseFlag = Param.boolean(Param.flagKind, "verbose")

// Create a boolean argument
const enableArg = Param.boolean(Param.argumentKind, "enable")

// Usage in CLI: --verbose (defaults to true when present, false when absent)
// or as positional: true/false
```

**Signature**

```ts
declare const boolean: <const Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L418)

Since v4.0.0