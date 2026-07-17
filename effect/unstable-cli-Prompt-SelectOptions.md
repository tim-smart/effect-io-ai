Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.SelectOptions

Options for a prompt that asks the user to select one value from a list of
choices.

**Signature**

```ts
export interface SelectOptions<A> {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The choices to display to the user.
   */
  readonly choices: ReadonlyArray<SelectChoice<A>>
  /**
   * The number of choices to display at one time (defaults to `10`).
   */
  readonly maxPerPage?: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L386)

Since v4.0.0