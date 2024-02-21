# size

Returns the number of key/value pairs in a record.

To import and use `size` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.size
```

**Example**

```ts
import { size } from "effect/ReadonlyRecord"

assert.deepStrictEqual(size({ a: "a", b: 1, c: true }), 3)
```

**Signature**

```ts
export declare const size: <K extends string, A>(self: ReadonlyRecord<K, A>) => number
```
