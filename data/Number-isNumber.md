# isNumber

Tests if a value is a `number`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { isNumber } from '@effect/data/Number'

assert.deepStrictEqual(isNumber(2), true)
assert.deepStrictEqual(isNumber('2'), false)
```

**Signature**

```ts
export declare const isNumber: (input: unknown) => input is number
```
