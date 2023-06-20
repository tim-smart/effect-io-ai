# greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

To import and use `greaterThan` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.greaterThan
```

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
