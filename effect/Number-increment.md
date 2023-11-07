# increment

Returns the result of adding `1` to a given number.

To import and use `increment` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.increment
```

**Example**

```ts
import { increment } from 'effect/Number'

assert.deepStrictEqual(increment(2), 3)
```

**Signature**

```ts
export declare const increment: (n: number) => number
```
