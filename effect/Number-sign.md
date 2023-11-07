# sign

Determines the sign of a given `number`.

To import and use `sign` from the "Number" module:

```ts
import * as Number from 'effect/Number'

// Can be accessed like this
Number.sign
```

**Example**

```ts
import { sign } from 'effect/Number'

assert.deepStrictEqual(sign(-5), -1)
assert.deepStrictEqual(sign(0), 0)
assert.deepStrictEqual(sign(5), 1)
```

**Signature**

```ts
export declare const sign: (n: number) => Ordering
```
