Package: `effect`<br />
Module: `Statement`<br />

## Statement.RecordInsertHelper

Helper segment for compiling one or more record objects into an INSERT
column/value clause, with optional returning output.

**Signature**

```ts
export interface RecordInsertHelper {
  readonly _tag: "RecordInsertHelper"
  readonly value: ReadonlyArray<Record<string, unknown>>
  /** @internal */
  readonly returningIdentifier: string | Fragment | undefined
  readonly returning: (sql: string | Identifier | Fragment) => RecordInsertHelper
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L245)

Since v4.0.0