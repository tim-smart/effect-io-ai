Package: `effect`<br />
Module: `Statement`<br />

## Statement.recordUpdateHelperSingle

Constructs a `RecordUpdateHelperSingle` from a record and a list of columns
to omit from the update.

**Signature**

```ts
declare const recordUpdateHelperSingle: (value: Record<string, unknown>, omit: ReadonlyArray<string>) => RecordUpdateHelperSingle
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L344)

Since v4.0.0