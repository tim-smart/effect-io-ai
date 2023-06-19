# isNumber

Tests if a value is a `number`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNumber } from '@effect/data/Predicate'

assert.deepStrictEqual(isNumber(2), true)

assert.deepStrictEqual(isNumber('2'), false)
```

**Signature**

```ts
export declare const isNumber: (input: unknown) => input is number
```
