Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.FileOptions

Options for a file-system selection prompt.

They control which path type can be selected, the starting directory, paging,
and filtering of displayed entries.

**Signature**

```ts
export interface FileOptions {
  /**
   * The path type that will be selected.
   *
   * Defaults to `"file"`.
   */
  readonly type?: Primitive.PathType
  /**
   * The message to display in the prompt.
   *
   * Defaults to `"Choose a file"`.
   */
  readonly message?: string
  /**
   * Where the user will initially be prompted to select files from.
   *
   * Defaults to the current working directory.
   */
  readonly startingPath?: string
  /**
   * The number of choices to display at one time
   *
   * Defaults to `10`.
   */
  readonly maxPerPage?: number
  /**
   * A function which removes any file from the prompt display where the
   * specified predicate returns `true`.
   *
   * Defaults to returning all files.
   */
  readonly filter?: (file: string) => boolean | Effect.Effect<boolean, never, Environment>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L352)

Since v4.0.0