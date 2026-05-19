Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.AutoCompleteOptions

Options for an autocomplete prompt that lets the user filter selectable
choices by typing.

**Signature**

```ts
export interface AutoCompleteOptions<A> extends SelectOptions<A> {
  /**
   * The label used for the filter display (defaults to "filter").
   */
  readonly filterLabel?: string
  /**
   * The placeholder shown when the filter is empty (defaults to "type to filter").
   */
  readonly filterPlaceholder?: string
  /**
   * The message displayed when no choices match (defaults to "No matches").
   */
  readonly emptyMessage?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L403)

Since v4.0.0