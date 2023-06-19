# sign

Determines the sign of a given `bigint`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { sign } from '@effect/data/Bigint'

assert.deepStrictEqual(sign(-5n), -1)
assert.deepStrictEqual(sign(0n), 0)
assert.deepStrictEqual(sign(5n), 1)
```

**Signature**

```ts
export declare const sign: (n: bigint) => Ordering
```
