# empty

Creates a new, empty record.

To import and use `empty` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.empty
undefined

**Signature**

```ts
export declare const empty: <K extends string | symbol = never, V = never>() => Record<
  ReadonlyRecord.NonLiteralKey<K>,
  V
>
```
