Package: `effect`<br />
Module: `CliError`<br />

## CliError.ShowHelp

Control flow indicator when help is requested via --help flag.
This is not an error but uses the error channel for control flow.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const showHelpIndicator = new CliError.ShowHelp({
  commandPath: ["myapp", "deploy", "production"]
})

console.log(showHelpIndicator.message)
// "Help requested"

// In help flag handling
const handleHelpFlag = (hasHelpFlag: boolean) =>
  Effect.gen(function*() {
    if (hasHelpFlag) {
      return yield* Effect.fail(showHelpIndicator)
    }
    return "continuing with command"
  })

// In error handling
const handleCliErrors = (error: CliError.CliError): void => {
  if (error._tag === "ShowHelp") {
    // Display help for the command path
    console.log(`Displaying help for: ${error.commandPath.join(" ")}`)
  }
  // Handle other errors...
}
```

**Signature**

```ts
declare class ShowHelp
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L427)

Since v4.0.0