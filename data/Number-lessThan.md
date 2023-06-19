# lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { lessThan } from '@effect/data/Number'

assert.deepStrictEqual(lessThan(2, 3), true)
assert.deepStrictEqual(lessThan(3, 3), false)
assert.deepStrictEqual(lessThan(4, 3), false)
```

**Signature**

```ts
export declare const lessThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean }
```
