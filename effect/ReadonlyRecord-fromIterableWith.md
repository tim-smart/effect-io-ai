# fromIterableWith

Takes an iterable and a projection function and returns a record.
The projection function maps each value of the iterable to a tuple of a key and a value, which is then added to the resulting record.

To import and use `fromIterableWith` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.fromIterableWith
```

**Example**

```ts
import { fromIterableWith } from "effect/ReadonlyRecord"

const input = [1, 2, 3, 4]

assert.deepStrictEqual(
  fromIterableWith(input, (a) => [String(a), a * 2]),
  { "1": 2, "2": 4, "3": 6, "4": 8 }
)
```

**Signature**

```ts
export declare const fromIterableWith: {
  <A, B>(f: (a: A) => readonly [string, B]): (self: Iterable<A>) => Record<string, B>
  <A, B>(self: Iterable<A>, f: (a: A) => readonly [string, B]): Record<string, B>
}
```
