# empty

Creates a new, empty record.

To import and use `empty` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.empty
```

**Signature**

```ts
export declare const empty: <K extends string | symbol = never, V = never>() => Record<
  ReadonlyRecord.NonLiteralKey<K>,
  V
>
```
