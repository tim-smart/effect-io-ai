Package: `effect`<br />
Module: `Statement`<br />

## Statement.Helper

Union of helper segment types accepted by the SQL statement constructor.

**Signature**

```ts
type Helper = | ArrayHelper
  | RecordInsertHelper
  | RecordUpdateHelper
  | RecordUpdateHelperSingle
  | Identifier
  | Custom
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L420)

Since v4.0.0