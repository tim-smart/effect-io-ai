# keys

Retrieve the keys of a given record as an array.

To import and use `keys` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.keys
```

**Signature**

```ts
export declare const keys: <K extends string, A>(self: ReadonlyRecord<K, A>) => K[]
```
