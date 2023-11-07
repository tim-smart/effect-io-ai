# every

This utility function is used to check if all the elements in a collection of boolean values are `true`.

To import and use `every` from the "Boolean" module:

```ts
import * as Boolean from 'effect/Boolean'

// Can be accessed like this
Boolean.every
```

**Example**

```ts
import { every } from 'effect/Boolean'

assert.deepStrictEqual(every([true, true, true]), true)
assert.deepStrictEqual(every([true, false, true]), false)
```

**Signature**

```ts
export declare const every: (collection: Iterable<boolean>) => boolean
```
