Package: `effect`<br />
Module: `CliError`<br />

## CliError.DuplicateOption

Error thrown when duplicate option names are detected between parent and child commands.

**Example**

```ts
import { CliError } from "effect/unstable/cli"

const duplicateError = new CliError.DuplicateOption({
  option: "--verbose",
  parentCommand: "myapp",
  childCommand: "deploy"
})

console.log(duplicateError.message)
// "Duplicate flag name "--verbose" in parent command "myapp" and subcommand "deploy".
// Parent will always claim this flag (Mode A semantics). Consider renaming one of them to avoid confusion."
```

**Signature**

```ts
declare class DuplicateOption
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L164)

Since v4.0.0