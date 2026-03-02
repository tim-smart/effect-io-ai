Package: `effect`<br />
Module: `Param`<br />

## Param.fileText

Creates a parameter that reads and returns file content as a string.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Read a config file as string
const configContent = Param.fileText(Param.flagKind, "config")

// Read a template file as argument
const templateContent = Param.fileText(Param.argumentKind, "template")

// Usage: --config config.txt (reads file content into string)
```

**Signature**

```ts
declare const fileText: <Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L681)

Since v4.0.0