Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ConfirmOptions

Options for a confirmation prompt that asks the user to choose a boolean
yes/no value.

**Signature**

```ts
export interface ConfirmOptions {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The initial value of the confirm prompt (defaults to `false`).
   */
  readonly initial?: boolean
  /**
   * The label to display after a user has responded to the prompt.
   */
  readonly label?: {
    /**
     * The label used if the prompt is confirmed (defaults to `"yes"`).
     */
    readonly confirm: string
    /**
     * The label used if the prompt is not confirmed (defaults to `"no"`).
     */
    readonly deny: string
  }
  /**
   * The placeholder to display when a user is responding to the prompt.
   */
  readonly placeholder?: {
    /**
     * The placeholder to use if the `initial` value of the prompt is `true`
     * (defaults to `"(Y/n)"`).
     */
    readonly defaultConfirm?: string
    /**
     * The placeholder to use if the `initial` value of the prompt is `false`
     * (defaults to `"(y/N)"`).
     */
    readonly defaultDeny?: string
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L140)

Since v4.0.0