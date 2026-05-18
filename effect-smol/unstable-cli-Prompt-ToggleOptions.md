Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToggleOptions

Options for a toggle prompt that lets the user switch between active and
inactive boolean states.

**Signature**

```ts
export interface ToggleOptions {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The intitial value of the toggle prompt (defaults to `false`).
   */
  readonly initial?: boolean
  /**
   * The text to display when the toggle is in the active state (defaults to
   * `on`).
   */
  readonly active?: string
  /**
   * The text to display when the toggle is in the inactive state (defaults to
   * `off`).
   */
  readonly inactive?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L521)

Since v4.0.0