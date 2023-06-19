# isString

Tests if a value is a `string`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isString } from '@effect/data/Predicate'

assert.deepStrictEqual(isString('a'), true)

assert.deepStrictEqual(isString(1), false)
```

**Signature**

```ts
export declare const isString: (input: unknown) => input is string
```
