Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.DateOptions

Options for a date prompt, including the displayed message, initial value,
format mask, validation, and locale labels.

**Signature**

```ts
export interface DateOptions {
  /**
   * The message to display in the prompt.
   */
  readonly message: string
  /**
   * The initial date value to display in the prompt (defaults to the current
   * date).
   */
  readonly initial?: globalThis.Date
  /**
   * The format mask of the date (defaults to `YYYY-MM-DD HH:mm:ss`).
   */
  readonly dateMask?: string
  /**
   * An effectful function that can be used to validate the value entered into
   * the prompt before final submission.
   */
  readonly validate?: (value: globalThis.Date) => Effect.Effect<globalThis.Date, string>
  /**
   * Custom locales that can be used in place of the defaults.
   */
  readonly locales?: {
    /**
     * The full names of each month of the year.
     */
    readonly months: [
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string
    ]
    /**
     * The short names of each month of the year.
     */
    readonly monthsShort: [
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string,
      string
    ]
    /**
     * The full names of each day of the week.
     */
    readonly weekdays: [string, string, string, string, string, string, string]
    /**
     * The short names of each day of the week.
     */
    readonly weekdaysShort: [string, string, string, string, string, string, string]
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L198)

Since v4.0.0