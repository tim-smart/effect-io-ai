# some

This utility function is used to check if at least one of the elements in a collection of boolean values is `true`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { some } from '@effect/data/Boolean'

assert.deepStrictEqual(some([true, false, true]), true)
assert.deepStrictEqual(some([false, false, false]), false)
```

**Signature**

```ts
export declare const some: (collection: Iterable<boolean>) => boolean
```
