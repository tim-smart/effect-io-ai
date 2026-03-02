Package: `effect`<br />
Module: `CliOutput`<br />

## CliOutput.Formatter

Service interface for formatting CLI output including help, errors, and version info.
This allows customization of output formatting, including color support.

**Example**

```ts
import { Effect } from "effect"
import { CliOutput } from "effect/unstable/cli"

// Create a custom formatter implementation
const customFormatter: CliOutput.Formatter = {
  formatHelpDoc: (doc) => `Custom Help: ${doc.usage}`,
  formatCliError: (error) => `Error: ${error.message}`,
  formatError: (error) => `[ERROR] ${error.message}`,
  formatVersion: (name, version) => `${name} (${version})`,
  formatErrors: (errors) => errors.map((error) => error.message).join("\\n")
}

// Use the custom formatter in a program
const program = Effect.gen(function*() {
  const formatter = yield* CliOutput.Formatter
  const helpText = formatter.formatVersion("myapp", "1.0.0")
  console.log(helpText)
}).pipe(
  Effect.provide(CliOutput.layer(customFormatter))
)
```

**Signature**

```ts
export interface Formatter {
  /**
   * Formats a HelpDoc structure into a readable string format.
   *
   * @example
   * ```ts
   * import type { HelpDoc } from "effect/unstable/cli"
   * import { CliOutput } from "effect/unstable/cli"
   *
   * const helpDoc: HelpDoc = {
   *   usage: "myapp [options] <file>",
   *   description: "Process files with various options",
   *   flags: [
   *     {
   *       name: "verbose",
   *       aliases: ["-v"],
   *       type: "boolean",
   *       description: "Enable verbose output",
   *       required: false
   *     }
   *   ],
   *   args: [
   *     {
   *       name: "file",
   *       type: "string",
   *       description: "Input file to process",
   *       required: true,
   *       variadic: false
   *     }
   *   ]
   * }
   *
   * const formatter = CliOutput.defaultFormatter()
   * const helpText = formatter.formatHelpDoc(helpDoc)
   * console.log(helpText)
   * // Outputs formatted help with sections: DESCRIPTION, USAGE, ARGUMENTS, FLAGS
   * ```
   *
   * @since 4.0.0
   */
  readonly formatHelpDoc: (doc: HelpDoc) => string

  /**
   * Formats a CLI error for display. Default implementation mirrors the error message.
   *
   * @example
   * ```ts
   * import * as Data from "effect/Data"
   * import { CliOutput } from "effect/unstable/cli"
   *
   * class InvalidOption extends Data.TaggedError("InvalidOption")<{
   *   readonly message: string
   * }> {}
   *
   * const formatter = CliOutput.defaultFormatter()
   * const error = new InvalidOption({ message: "Unknown flag '--invalid'" })
   * const errorMessage = formatter.formatCliError(error)
   * console.log(errorMessage) // "Unknown flag '--invalid'"
   * ```
   *
   * @since 4.0.0
   */
  readonly formatCliError: (error: CliError.CliError) => string

  /**
   * Formats an error section with proper styling and color reset.
   *
   * @example
   * ```ts
   * import * as Data from "effect/Data"
   * import { CliOutput } from "effect/unstable/cli"
   *
   * class ValidationError extends Data.TaggedError("ValidationError")<{
   *   readonly message: string
   * }> {}
   *
   * const colorFormatter = CliOutput.defaultFormatter({ colors: true })
   * const noColorFormatter = CliOutput.defaultFormatter({ colors: false })
   *
   * const error = new ValidationError({ message: "Value must be positive" })
   *
   * const coloredError = colorFormatter.formatError(error)
   * console.log(coloredError) // "\n\x1b[1m\x1b[31mERROR\x1b[0m\n  Value must be positive\x1b[0m"
   *
   * const plainError = noColorFormatter.formatError(error)
   * console.log(plainError) // "\nERROR\n  Value must be positive"
   * ```
   *
   * @since 4.0.0
   */
  readonly formatError: (error: CliError.CliError) => string

  /**
   * Formats version output for display.
   *
   * @example
   * ```ts
   * import { CliOutput } from "effect/unstable/cli"
   *
   * const colorFormatter = CliOutput.defaultFormatter({ colors: true })
   * const noColorFormatter = CliOutput.defaultFormatter({ colors: false })
   *
   * const appName = "my-awesome-tool"
   * const version = "1.2.3"
   *
   * const coloredVersion = colorFormatter.formatVersion(appName, version)
   * console.log(coloredVersion) // "\x1b[1mmy-awesome-tool\x1b[0m \x1b[2mv\x1b[0m\x1b[1m1.2.3\x1b[0m"
   *
   * const plainVersion = noColorFormatter.formatVersion(appName, version)
   * console.log(plainVersion) // "my-awesome-tool v1.2.3"
   * ```
   *
   * @since 4.0.0
   */
  readonly formatVersion: (name: string, version: string) => string

  /**
   * Formats multiple CLI errors for display, grouping by error type.
   *
   * @example
   * ```ts
   * import { CliError, CliOutput } from "effect/unstable/cli"
   *
   * const formatter = CliOutput.defaultFormatter({ colors: false })
   *
   * const errors = [
   *   new CliError.UnrecognizedOption({
   *     option: "--foo",
   *     suggestions: ["--force"]
   *   }),
   *   new CliError.UnrecognizedOption({ option: "--bar", suggestions: [] }),
   *   new CliError.MissingOption({ option: "--required" })
   * ]
   *
   * const output = formatter.formatErrors(errors)
   * // Groups errors by type and displays all at once
   * ```
   *
   * @since 4.0.0
   */
  readonly formatErrors: (errors: ReadonlyArray<CliError.CliError>) => string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliOutput.ts#L41)

Since v4.0.0