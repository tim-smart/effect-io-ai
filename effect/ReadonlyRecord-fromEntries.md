# fromEntries

Builds a record from an iterable of key-value pairs.

If there are conflicting keys when using `fromEntries`, the last occurrence of the key/value pair will overwrite the
previous ones. So the resulting record will only have the value of the last occurrence of each key.

To import and use `fromEntries` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.fromEntries
```

**Example**

```ts
import { fromEntries } from 'effect/ReadonlyRecord'

const input: Array<[string, number]> = [
  ['a', 1],
  ['b', 2],
]

assert.deepStrictEqual(fromEntries(input), { a: 1, b: 2 })
```

**Signature**

```ts
export declare const fromEntries: <A>(self: Iterable<readonly [string, A]>) => Record<string, A>
```
