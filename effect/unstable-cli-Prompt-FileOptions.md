Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.FileOptions

Options for a file-system selection prompt.

**Details**

They control which path type can be selected, the starting directory, paging,
and filtering of displayed entries.

**Signature**

```ts
export interface FileOptions {
  /**
   * The path type that will be selected, defaulting to `"file"`.
   */
  readonly type?: Primitive.PathType
  /**
   * The message to display in the prompt, defaulting to `"Choose a file"`.
   */
  readonly message?: string
  /**
   * Where the user will initially be prompted to select files from, defaulting
   * to the current working directory.
   */
  readonly startingPath?: string
  /**
   * The default path to select when the prompt is first displayed.
   */
  readonly default?: string
  /**
   * The number of choices to display at one time, defaulting to `10`.
   */
  readonly maxPerPage?: number
  /**
   * A predicate or effect that keeps a file in the prompt when it returns
   * `true`, defaulting to returning all files.
   */
  readonly filter?: (file: string) => boolean | Effect.Effect<boolean, never, Environment>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L350)

Since v4.0.0