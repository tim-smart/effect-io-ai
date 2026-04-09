Package: `effect`<br />
Module: `Param`<br />

## Param.string

Creates a string parameter.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create a string flag
const nameFlag = Param.string(Param.flagKind, "name")

// Create a string argument
const fileArg = Param.string(Param.argumentKind, "file")

// Usage in CLI: --name "John Doe" or as positional argument
```

**Signature**

```ts
declare const string: <const Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L319)

Since v4.0.0