Package: `effect`<br />
Module: `Statement`<br />

## Statement.RecordUpdateHelper

Helper segment for compiling multi-row update values with a table alias and
optional returning output.

**Signature**

```ts
export interface RecordUpdateHelper {
  readonly _tag: "RecordUpdateHelper"
  readonly value: ReadonlyArray<Record<string, unknown>>
  readonly alias: string
  /** @internal */
  readonly returningIdentifier: string | Fragment | undefined
  readonly returning: (sql: string | Identifier | Fragment) => RecordUpdateHelper
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L284)

Since v4.0.0