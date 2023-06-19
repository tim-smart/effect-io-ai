# isBoolean

Tests if a value is a `boolean`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

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
