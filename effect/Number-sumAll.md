# sumAll

Takes an `Iterable` of `number`s and returns their sum as a single `number`.

To import and use `sumAll` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.sumAll
```

**Example**

```ts
import { sumAll } from 'effect/Number'

assert.deepStrictEqual(sumAll([2, 3, 4]), 9)
```

**Signature**

```ts
export declare const sumAll: (collection: Iterable<number>) => number
```
