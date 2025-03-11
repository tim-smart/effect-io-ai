## AvailablePerLine

Represents a `PageWidth` setting that informs the layout algorithms to avoid
exceeding the specified space per line.

**Signature**

```ts
export interface AvailablePerLine extends PageWidth.Proto {
  readonly _tag: "AvailablePerLine"
  /**
   * The number of characters, including whitespace, that can fit on a single
   * line.
   */
  readonly lineWidth: number
  /**
   * The fraction of the total page width that can be printed on. This allows
   * limiting the length of printable text per line. Values must be between
   * `0` and `1` (`0.4` to `1` is typical).
   */
  readonly ribbonFraction: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/PageWidth.ts#L54)

Since v1.0.0