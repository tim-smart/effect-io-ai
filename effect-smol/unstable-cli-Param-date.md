Package: `effect`<br />
Module: `Param`<br />

## Param.date

Creates a date parameter that parses ISO date strings.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create a date flag
const startFlag = Param.date(Param.flagKind, "start-date")

// Create a date argument
const dueDateArg = Param.date(Param.argumentKind, "due-date")

// Usage in CLI: --start-date "2023-12-25" or as positional: "2023-01-01"
// Parses to JavaScript Date object
```

**Signature**

```ts
declare const date: <const Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L445)

Since v4.0.0