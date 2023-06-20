# isString

Tests if a value is a `string`.

To import and use `isString` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.isString
```

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
