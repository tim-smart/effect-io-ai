# and

Combines two boolean using AND: `self && that`.

To import and use `and` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.and
```

**Example**

```ts
import { and } from '@effect/data/Boolean'

assert.deepStrictEqual(and(true, true), true)
assert.deepStrictEqual(and(true, false), false)
assert.deepStrictEqual(and(false, true), false)
assert.deepStrictEqual(and(false, false), false)
```

**Signature**

```ts
export declare const and: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
