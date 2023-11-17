# not

Negates the given boolean: `!self`

To import and use `not` from the "Boolean" module:

```ts
import * as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.not
```

**Example**

```ts
import { not } from "effect/Boolean"

assert.deepStrictEqual(not(true), false)
assert.deepStrictEqual(not(false), true)
```

**Signature**

```ts
export declare const not: (self: boolean) => boolean
```
