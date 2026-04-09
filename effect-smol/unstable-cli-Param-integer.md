Package: `effect`<br />
Module: `Param`<br />

## Param.integer

Creates an integer parameter.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create an integer flag
const portFlag = Param.integer(Param.flagKind, "port")

// Create an integer argument
const countArg = Param.integer(Param.argumentKind, "count")

// Usage in CLI: --port 8080 or as positional argument: 42
```

**Signature**

```ts
declare const integer: <const Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L382)

Since v4.0.0