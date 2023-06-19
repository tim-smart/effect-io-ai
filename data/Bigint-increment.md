# increment

Returns the result of adding `1n` to a given number.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { increment } from '@effect/data/Bigint'

assert.deepStrictEqual(increment(2n), 3n)
```

**Signature**

```ts
export declare const increment: (n: bigint) => bigint
```
