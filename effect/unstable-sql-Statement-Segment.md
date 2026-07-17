Package: `effect`<br />
Module: `Statement`<br />

## Statement.Segment

Union of low-level segment types that make up a SQL `Fragment`.

**Signature**

```ts
type Segment = | Literal
  | Identifier
  | Parameter
  | ArrayHelper
  | RecordInsertHelper
  | RecordUpdateHelper
  | RecordUpdateHelperSingle
  | Custom<any, any, any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L133)

Since v4.0.0