# isBigint

Tests if a value is a `bigint`.

To import and use `isBigint` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.isBigint
```

**Example**

```ts
import { isBigint } from '@effect/data/Predicate'

assert.deepStrictEqual(isBigint(1n), true)

assert.deepStrictEqual(isBigint(1), false)
```

**Signature**

```ts
export declare const isBigint: (input: unknown) => input is bigint
```
