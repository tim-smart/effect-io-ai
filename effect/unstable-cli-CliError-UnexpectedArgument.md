Package: `effect`<br />
Module: `CliError`<br />

## CliError.UnexpectedArgument

Error thrown when positional arguments remain after a command has parsed all
of its parameters.

**Example** (Reporting unexpected arguments)

```ts
import { CliError } from "effect/unstable/cli"

const error = new CliError.UnexpectedArgument({
  arguments: ["extra.txt"]
})

console.log(error.message)
// "Unexpected positional argument: \"extra.txt\""
```

**Signature**

```ts
declare class UnexpectedArgument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/CliError.ts#L331)

Since v4.0.0