# range

Return a `Iterable` containing a range of integers, including both endpoints.

If `end` is omitted, the range will not have an upper bound.

To import and use `range` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.range
undefined

**Example**

```ts
import { range } from "effect/Iterable"

assert.deepStrictEqual(Array.from(range(1, 3)), [1, 2, 3])
```

**Signature**

```ts
export declare const range: (start: number, end?: number) => Iterable<number>
```
