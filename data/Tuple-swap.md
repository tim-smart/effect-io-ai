# swap

Swaps the two elements of a tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { swap } from '@effect/data/Tuple'

assert.deepStrictEqual(swap(['hello', 42]), [42, 'hello'])
```

**Signature**

```ts
export declare const swap: <L, R>(self: readonly [L, R]) => [R, L]
```
