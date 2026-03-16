Package: `effect`<br />
Module: `CliOutput`<br />

## CliOutput.layer

Creates a Layer that provides a custom Formatter implementation.

**Example**

```ts
import * as Console from "effect/Console"
import * as Effect from "effect/Effect"
import { CliOutput } from "effect/unstable/cli"

// Create a custom formatter without colors
const noColorFormatter = CliOutput.defaultFormatter({ colors: false })
const NoColorLayer = CliOutput.layer(noColorFormatter)

// Create a program that uses the custom formatter
const program = Effect.gen(function*() {
  const formatter = yield* CliOutput.Formatter
  const versionText = formatter.formatVersion("my-cli", "1.0.0")
  yield* Console.log(`Using custom formatter: ${versionText}`)
}).pipe(
  Effect.provide(NoColorLayer)
)

// You can also create completely custom formatters
const jsonFormatter: CliOutput.Formatter = {
  formatHelpDoc: (doc) => JSON.stringify(doc, null, 2),
  formatCliError: (error) => JSON.stringify({ error: error.message }),
  formatError: (error) =>
    JSON.stringify({ type: "error", message: error.message }),
  formatVersion: (name, version) => JSON.stringify({ name, version }),
  formatErrors: (errors) => JSON.stringify(errors.map((error) => error.message))
}
const JsonLayer = CliOutput.layer(jsonFormatter)
```

**Signature**

```ts
declare const layer: (formatter: Formatter) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliOutput.ts#L255)

Since v4.0.0