# greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

To import and use `greaterThan` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.greaterThan
```

**Example**

```ts
import { greaterThan } from 'effect/BigInt'

assert.deepStrictEqual(greaterThan(2n, 3n), false)
assert.deepStrictEqual(greaterThan(3n, 3n), false)
assert.deepStrictEqual(greaterThan(4n, 3n), true)
```

**Signature**

```ts
export declare const greaterThan: { (that: bigint): (self: bigint) => boolean; (self: bigint, that: bigint): boolean }
```
