# fromIterable

Creates a new `Array` from an iterable collection of values.
If the input is already an array, it returns the input as-is.
Otherwise, it converts the iterable collection to an array.

To import and use `fromIterable` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.fromIterable
```

**Example**

```ts
import { Array } from "effect"

const set = new Set([1, 2, 3])
const result = Array.fromIterable(set)
assert.deepStrictEqual(result, [1, 2, 3])
```

**Signature**

```ts
export declare const fromIterable: <A>(collection: Iterable<A>) => A[]
```
