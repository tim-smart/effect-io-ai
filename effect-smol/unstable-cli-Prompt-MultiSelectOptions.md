Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.MultiSelectOptions

Options for a multi-select prompt, including bulk-selection labels and
minimum or maximum selection counts.

**Signature**

```ts
export interface MultiSelectOptions {
  /**
   * Text for the "Select All" option (defaults to "Select All").
   */
  readonly selectAll?: string
  /**
   * Text for the "Select None" option (defaults to "Select None").
   */
  readonly selectNone?: string
  /**
   * Text for the "Inverse Selection" option (defaults to "Inverse Selection").
   */
  readonly inverseSelection?: string
  /**
   * The minimum number of choices that must be selected.
   */
  readonly min?: number
  /**
   * The maximum number of choices that can be selected.
   */
  readonly max?: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L418)

Since v4.0.0