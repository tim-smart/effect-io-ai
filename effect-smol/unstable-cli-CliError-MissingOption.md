Package: `effect`<br />
Module: `CliError`<br />

## CliError.MissingOption

Error thrown when a required option is missing.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const missingOptionError = new CliError.MissingOption({
  option: "api-key"
})

console.log(missingOptionError.message)
// "Missing required flag: --api-key"

// In validation context
const validateRequiredOptions = (options: Record<string, string | undefined>) =>
  Effect.gen(function*() {
    const apiKey = options["api-key"]
    if (!apiKey) {
      return yield* Effect.fail(missingOptionError)
    }
    return apiKey
  })
```

**Signature**

```ts
declare class MissingOption
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L213)

Since v4.0.0