Package: `effect`<br />
Module: `Statement`<br />

## Statement.RecordUpdateHelperSingle

Helper segment for compiling a single record into update assignments,
omitting selected columns and optionally returning output.

**Signature**

```ts
export interface RecordUpdateHelperSingle {
  readonly _tag: "RecordUpdateHelperSingle"
  readonly value: Record<string, unknown>
  readonly omit: ReadonlyArray<string>
  /** @internal */
  readonly returningIdentifier: string | Fragment | undefined
  readonly returning: (sql: string | Identifier | Fragment) => RecordUpdateHelperSingle
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L322)

Since v4.0.0