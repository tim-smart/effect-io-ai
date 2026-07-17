Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ListOptions

Options for a text prompt that returns a list of strings by splitting the
input on a delimiter.

**Signature**

```ts
export interface ListOptions extends TextOptions {
  /**
   * The delimiter that separates list entries.
   */
  readonly delimiter?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L332)

Since v4.0.0