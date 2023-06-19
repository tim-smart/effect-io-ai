# reverse

Inverts the ordering of the input `Ordering`.

Part of the `Ordering` module, imported from `@effect/data/Ordering`.

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
