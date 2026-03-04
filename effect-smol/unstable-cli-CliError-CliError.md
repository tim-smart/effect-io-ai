Package: `effect`<br />
Module: `CliError`<br />

## CliError.CliError

Union type representing all possible CLI error conditions.

**Example**

```ts
import type { CliError } from "effect/unstable/cli"

const handleCliError = (error: CliError.CliError): void => {
  switch (error._tag) {
    case "UnrecognizedOption":
      console.log(`Unknown flag: ${error.option}`)
      break
    case "MissingOption":
      console.log(`Required flag missing: ${error.option}`)
      break
    case "InvalidValue":
      console.log(`Invalid value: ${error.value} for ${error.option}`)
      break
    case "ShowHelp":
      // Display help for the command path
      console.log(`Help requested for: ${error.commandPath.join(" ")}`)
      break
    default:
      console.log(error.message)
  }
}
```

**Signature**

```ts
type CliError = | UnrecognizedOption
  | DuplicateOption
  | MissingOption
  | MissingArgument
  | InvalidValue
  | UnknownSubcommand
  | ShowHelp
  | UserError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L76)

Since v4.0.0