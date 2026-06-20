Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorOptions

Options for `Error` and `Defect`.

**Signature**

```ts
export interface ErrorOptions {
  /**
   * Includes string stack traces in encoded `Error` values when set to `true`.
   *
   * @default false
   */
  readonly includeStack?: boolean | undefined
  /**
   * Excludes `Error.cause` values from encoded `Error` values when set to
   * `true`.
   *
   * @default false
   */
  readonly excludeCause?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9144)

Since v4.0.0