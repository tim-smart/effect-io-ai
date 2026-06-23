Package: `effect`<br />
Module: `Param`<br />

## Param.string

Creates a string parameter.

**Example** (Creating string parameters)

```ts
import { Param } from "effect/unstable/cli"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L376)

Since v4.0.0