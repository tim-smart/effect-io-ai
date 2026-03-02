Package: `effect`<br />
Module: `CliError`<br />

## CliError.UnknownSubcommand

Error thrown when an unknown subcommand is encountered.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const unknownSubcommandError = new CliError.UnknownSubcommand({
  subcommand: "deplyo", // typo
  parent: ["myapp"],
  suggestions: ["deploy", "destroy"]
})

console.log(unknownSubcommandError.message)
// "Unknown subcommand "deplyo" for "myapp"
//
//  Did you mean this?
//    deploy
//    destroy"

// In subcommand parsing
const parseSubcommand = (subcommand: string) =>
  Effect.gen(function*() {
    const validCommands = ["deploy", "destroy", "status"]
    if (!validCommands.includes(subcommand)) {
      return yield* Effect.fail(unknownSubcommandError)
    }
    return subcommand
  })
```

**Signature**

```ts
declare class UnknownSubcommand
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L365)

Since v4.0.0