Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.SelectChoice

Represents one choice displayed by select, autocomplete, and multi-select
prompts.

**Signature**

```ts
export interface SelectChoice<A> {
  /**
   * The name of the select option that is displayed to the user.
   */
  readonly title: string
  /**
   * The underlying value of the select option.
   */
  readonly value: A
  /**
   * An optional description for the select option which will be displayed
   * to the user.
   */
  readonly description?: string
  /**
   * Whether or not this select option is disabled.
   */
  readonly disabled?: boolean
  /**
   * Whether this option should be selected by default (only used by MultiSelect).
   */
  readonly selected?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L463)

Since v4.0.0