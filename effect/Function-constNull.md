# constNull

A thunk that returns always `null`.

To import and use `constNull` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.constNull
undefined

**Example**

```ts
import { constNull } from "effect/Function"

assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
export declare const constNull: LazyArg<null>
```
