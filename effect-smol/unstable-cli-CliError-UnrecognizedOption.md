Package: `effect`<br />
Module: `CliError`<br />

## CliError.UnrecognizedOption

Error thrown when an unrecognized option is encountered.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

// Creating an unrecognized option error
const unrecognizedError = new CliError.UnrecognizedOption({
  option: "--unknown-flag",
  command: ["deploy", "production"],
  suggestions: ["--verbose", "--force"]
})

console.log(unrecognizedError.message)
// "Unrecognized flag: --unknown-flag in command deploy production
//
//  Did you mean this?
//    --verbose
//    --force"

// In CLI parsing context
const parseCommand = Effect.gen(function*() {
  // If parsing encounters unknown flag
  return yield* unrecognizedError
})
```

**Signature**

```ts
declare class UnrecognizedOption
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L118)

Since v4.0.0