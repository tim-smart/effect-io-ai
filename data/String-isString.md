# isString

Tests if a value is a `string`.

Part of the `String` module, imported from `@effect/data/String`.

**Example**

```ts
import { isString } from '@effect/data/String'

assert.deepStrictEqual(isString('a'), true)
assert.deepStrictEqual(isString(1), false)
```

**Signature**

```ts
export declare const isString: Refinement<unknown, string>
```
