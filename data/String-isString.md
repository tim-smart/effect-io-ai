# isString

Tests if a value is a `string`.

To import and use `isString` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.isString
```

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
