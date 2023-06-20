# lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

To import and use `lessThan` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.lessThan
```

**Example**

```ts
import { lessThan } from '@effect/data/Bigint'

assert.deepStrictEqual(lessThan(2n, 3n), true)
assert.deepStrictEqual(lessThan(3n, 3n), false)
assert.deepStrictEqual(lessThan(4n, 3n), false)
```

**Signature**

```ts
export declare const lessThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean }
```
