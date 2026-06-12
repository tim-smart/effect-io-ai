Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.FloatOptions

Options for a floating-point number prompt.

**Details**

In addition to the numeric bounds and step settings from `IntegerOptions`,
the prompt can be configured with a display precision.

**Signature**

```ts
export interface FloatOptions extends IntegerOptions {
  /**
   * The precision to use for the floating point value (defaults to `2`).
   */
  readonly precision?: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L318)

Since v4.0.0