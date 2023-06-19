# greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { greaterThan } from '@effect/data/Number'

assert.deepStrictEqual(greaterThan(2, 3), false)
assert.deepStrictEqual(greaterThan(3, 3), false)
assert.deepStrictEqual(greaterThan(4, 3), true)
```

**Signature**

```ts
export declare const greaterThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean }
```
