# fromEntries

Builds a record from an iterable of key-value pairs.

If there are conflicting keys when using `fromEntries`, the last occurrence of the key/value pair will overwrite the
previous ones. So the resulting record will only have the value of the last occurrence of each key.

To import and use `fromEntries` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.fromEntries
undefined

**Example**

```ts
import { fromEntries } from "effect/Record"

const input: Array<[string, number]> = [
  ["a", 1],
  ["b", 2]
]

assert.deepStrictEqual(fromEntries(input), { a: 1, b: 2 })
```

**Signature**

```ts
export declare const fromEntries: <Entry extends readonly [string | symbol, any]>(
  entries: Iterable<Entry>
) => Record<ReadonlyRecord.NonLiteralKey<Entry[0]>, Entry[1]>
```
