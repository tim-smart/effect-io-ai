Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.IntegerOptions

Options for an integer prompt, including bounds, keyboard step sizes, and
additional validation.

**Signature**

```ts
export interface IntegerOptions {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The minimum value that can be entered by the user (defaults to `-Infinity`).
   */
  readonly min?: number
  /**
   * The maximum value that can be entered by the user (defaults to `Infinity`).
   */
  readonly max?: number
  /**
   * The value that will be used to increment the prompt value when using the
   * up arrow key (defaults to `1`).
   */
  readonly incrementBy?: number
  /**
   * The value that will be used to decrement the prompt value when using the
   * down arrow key (defaults to `1`).
   */
  readonly decrementBy?: number
  /**
   * An effectful function that can be used to validate the value entered into
   * the prompt before final submission.
   */
  readonly validate?: (value: number) => Effect.Effect<number, string>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L271)

Since v4.0.0