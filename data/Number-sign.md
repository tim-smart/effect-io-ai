# sign

Determines the sign of a given `number`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { sign } from '@effect/data/Number'

assert.deepStrictEqual(sign(-5), -1)
assert.deepStrictEqual(sign(0), 0)
assert.deepStrictEqual(sign(5), 1)
```

**Signature**

```ts
export declare const sign: (n: number) => Ordering
```
