# every

This utility function is used to check if all the elements in a collection of boolean values are `true`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { every } from '@effect/data/Boolean'

assert.deepStrictEqual(every([true, true, true]), true)
assert.deepStrictEqual(every([true, false, true]), false)
```

**Signature**

```ts
export declare const every: (collection: Iterable<boolean>) => boolean
```
