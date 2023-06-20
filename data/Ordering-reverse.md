# reverse

Inverts the ordering of the input `Ordering`.

To import and use `reverse` from the "Ordering" module:

```ts
import * as Ordering from '@effect/data/Ordering'

// Can be accessed like this
Ordering.reverse
```

**Example**

```ts
import { reverse } from '@effect/data/Ordering'

assert.deepStrictEqual(reverse(1), -1)
assert.deepStrictEqual(reverse(-1), 1)
assert.deepStrictEqual(reverse(0), 0)
```

**Signature**

```ts
export declare const reverse: (o: Ordering) => Ordering
```
