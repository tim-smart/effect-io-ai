# swap

Swaps the two elements of a tuple.

To import and use `swap` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.swap
```

**Example**

```ts
import { swap } from '@effect/data/Tuple'

assert.deepStrictEqual(swap(['hello', 42]), [42, 'hello'])
```

**Signature**

```ts
export declare const swap: <L, R>(self: readonly [L, R]) => [R, L]
```
