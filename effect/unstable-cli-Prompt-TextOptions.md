Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.TextOptions

Options for text-entry prompts, including the displayed message, default
text, and effectful validation before submission.

**Signature**

```ts
export interface TextOptions {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The default value of the text option.
   */
  readonly default?: string
  /**
   * An effectful function that can be used to validate the value entered into
   * the prompt before final submission.
   */
  readonly validate?: (value: string) => Effect.Effect<string, string>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L491)

Since v4.0.0