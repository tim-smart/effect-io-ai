# lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

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
