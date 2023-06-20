# isBoolean

Tests if a value is a `boolean`.

To import and use `isBoolean` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.isBoolean
```

**Example**

```ts
import { isBoolean } from '@effect/data/Predicate'

assert.deepStrictEqual(isBoolean(true), true)

assert.deepStrictEqual(isBoolean('true'), false)
```

**Signature**

```ts
export declare const isBoolean: (input: unknown) => input is boolean
```
