# getSecond

Return the second element of a tuple.

To import and use `getSecond` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.getSecond
```

**Example**

```ts
import { getSecond } from '@effect/data/Tuple'

assert.deepStrictEqual(getSecond(['hello', 42]), 42)
```

**Signature**

```ts
export declare const getSecond: <L, R>(self: readonly [L, R]) => R
```
