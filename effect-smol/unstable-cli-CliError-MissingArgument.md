Package: `effect`<br />
Module: `CliError`<br />

## CliError.MissingArgument

Error thrown when a required positional argument is missing.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const missingArgError = new CliError.MissingArgument({
  argument: "target"
})

console.log(missingArgError.message)
// "Missing required argument: target"

// In argument parsing
const parseArguments = (args: Array<string>) =>
  Effect.gen(function*() {
    if (args.length === 0) {
      return yield* Effect.fail(missingArgError)
    }
    return args[0]
  })
```

**Signature**

```ts
declare class MissingArgument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L258)

Since v4.0.0