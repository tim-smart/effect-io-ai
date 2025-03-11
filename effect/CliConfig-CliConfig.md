## CliConfig

Represents how arguments from the command-line are to be parsed.

**Signature**

```ts
export interface CliConfig {
  /**
   * Whether or not the argument parser should be case sensitive.
   *
   * Defaults to `false`.
   */
  readonly isCaseSensitive: boolean
  /**
   * Levenstein distance threshold for when to show auto correct suggestions.
   *
   * Defaults to `2`.
   */
  readonly autoCorrectLimit: number
  /**
   * Whether or not to perform a final check of the command-line arguments for
   * a built-in option, even if the provided command is not valid.
   *
   * Defaults to `false`.
   */
  readonly finalCheckBuiltIn: boolean
  /**
   * Whether or not to display all the names of an option in the usage of a
   * particular command.
   *
   * Defaults to `true`.
   */
  readonly showAllNames: boolean
  /**
   * Whether or not to display built-in options in the help documentation
   * generated for a `Command`.
   *
   * Defaults to `true`.
   */
  readonly showBuiltIns: boolean
  /**
   * Whether or not to display the type of an option in the usage of a
   * particular command.
   *
   * Defaults to `true`.
   */
  readonly showTypes: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/CliConfig.ts#L14)

Since v1.0.0