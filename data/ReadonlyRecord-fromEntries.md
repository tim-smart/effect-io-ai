# fromEntries

Builds a record from an iterable of key-value pairs.

If there are conflicting keys when using `fromEntries`, the last occurrence of the key/value pair will overwrite the
previous ones. So the resulting record will only have the value of the last occurrence of each key.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { fromEntries } from '@effect/data/ReadonlyRecord'

const input: Array<[string, number]> = [
  ['a', 1],
  ['b', 2],
]

assert.deepStrictEqual(fromEntries(input), { a: 1, b: 2 })
```

**Signature**

```ts
export declare const fromEntries: <A>(self: Iterable<[string, A]>) => Record<string, A>
```
