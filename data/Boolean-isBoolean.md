# isBoolean

Tests if a value is a `boolean`.

To import and use `isBoolean` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.isBoolean
```

**Example**

```ts
import { isBoolean } from '@effect/data/Boolean'

assert.deepStrictEqual(isBoolean(true), true)
assert.deepStrictEqual(isBoolean('true'), false)
```

**Signature**

```ts
export declare const isBoolean: (input: unknown) => input is boolean
```
