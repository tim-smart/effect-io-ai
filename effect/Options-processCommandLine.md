# processCommandLine

Processes the provided command-line arguments, searching for the specified
`Options`.

Returns an `Option<ValidationError>`, any leftover arguments, and the
constructed value of type `A`. The possible error inside
`Option<ValidationError>` would only be triggered if there is an error when
parsing the command-line arguments. This is because `ValidationError`s are
also used internally to control the end of the command-line arguments (i.e.
the command-line symbol `--`) corresponding to options.

To import and use `processCommandLine` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.processCommandLine
```

**Signature**

```ts
export declare const processCommandLine: {
  (
    args: ReadonlyArray<string>,
    config: CliConfig
  ): <A>(self: Options<A>) => Effect<FileSystem, ValidationError, [Option<ValidationError>, readonly string[], A]>
  <A>(
    self: Options<A>,
    args: ReadonlyArray<string>,
    config: CliConfig
  ): Effect<FileSystem, ValidationError, [Option<ValidationError>, readonly string[], A]>
}
```
