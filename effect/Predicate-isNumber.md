# isNumber

Tests if a value is a `number`.

To import and use `isNumber` from the "Predicate" module:

```ts
import * as Predicate from 'effect/Predicate'

// Can be accessed like this
Predicate.isNumber
```

**Example**

```ts
import { isNumber } from 'effect/Predicate'

assert.deepStrictEqual(isNumber(2), true)

assert.deepStrictEqual(isNumber('2'), false)
```

**Signature**

```ts
export declare const isNumber: (input: unknown) => input is number
```
