Package: `effect`<br />
Module: `Statement`<br />

## Statement.csv

Creates a comma-separated SQL fragment from values, optionally adding a
prefix, and returns an empty fragment when no values are provided.

**Signature**

```ts
declare const csv: { (values: ReadonlyArray<string | Fragment>): Fragment; (prefix: string, values: ReadonlyArray<string | Fragment>): Fragment; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L714)

Since v4.0.0