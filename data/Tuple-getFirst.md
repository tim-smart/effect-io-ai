# getFirst

Return the first element of a tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Example**

```ts
import { getFirst } from '@effect/data/Tuple'

assert.deepStrictEqual(getFirst(['hello', 42]), 'hello')
```

**Signature**

```ts
export declare const getFirst: <L, R>(self: readonly [L, R]) => L
```
