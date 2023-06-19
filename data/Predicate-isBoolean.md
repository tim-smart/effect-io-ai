# isBoolean

Tests if a value is a `boolean`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

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
