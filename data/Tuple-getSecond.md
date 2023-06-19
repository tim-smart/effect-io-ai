# getSecond

Return the second element of a tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { getSecond } from '@effect/data/Tuple'

assert.deepStrictEqual(getSecond(['hello', 42]), 42)
```

**Signature**

```ts
export declare const getSecond: <L, R>(self: readonly [L, R]) => R
```
