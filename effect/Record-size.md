# size

Returns the number of key/value pairs in a record.

To import and use `size` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.size
undefined

**Example**

```ts
import { size } from "effect/Record"

assert.deepStrictEqual(size({ a: "a", b: 1, c: true }), 3)
```

**Signature**

```ts
export declare const size: <K extends string, A>(self: ReadonlyRecord<K, A>) => number
```
