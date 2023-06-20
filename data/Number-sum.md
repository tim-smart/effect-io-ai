# sum

Provides an addition operation on `number`s.

To import and use `sum` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.sum
```

**Example**

```ts
import { sum } from '@effect/data/Number'

assert.deepStrictEqual(sum(2, 3), 5)
```

**Signature**

```ts
export declare const sum: { (that: number): (self: number) => number; (self: number, that: number): number }
```
