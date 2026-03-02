Package: `effect`<br />
Module: `CliOutput`<br />

## CliOutput.defaultFormatter

Creates a default formatter with configurable options.

**Example**

```ts
import { Effect } from "effect"
import { CliError, CliOutput } from "effect/unstable/cli"

// Create a formatter without colors for tests or CI environments
const noColorFormatter = CliOutput.defaultFormatter({ colors: false })

// Create a formatter with colors forced on
const colorFormatter = CliOutput.defaultFormatter({ colors: true })

// Auto-detect colors based on terminal support (default behavior)
const autoFormatter = CliOutput.defaultFormatter()

const program = Effect.gen(function*() {
  const formatter = colorFormatter

  // Format an error with proper styling
  const error = new CliError.InvalidValue({
    option: "foo",
    value: "bar",
    expected: "baz",
    kind: "flag"
  })
  const errorText = formatter.formatError(error)
  console.log(errorText)

  // Format version information
  const versionText = formatter.formatVersion("my-tool", "1.2.3")
  console.log(versionText)
})
```

**Signature**

```ts
declare const defaultFormatter: (options?: { colors?: boolean; }) => Formatter
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliOutput.ts#L294)

Since v4.0.0