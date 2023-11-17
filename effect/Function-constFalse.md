# constFalse

A thunk that returns always `false`.

To import and use `constFalse` from the "Function" module:

```ts
import * as Function from "effect/Function"
// Can be accessed like this
Function.constFalse
```

**Example**

```ts
import { constFalse } from "effect/Function"

assert.deepStrictEqual(constFalse(), false)
```

**Signature**

```ts
export declare const constFalse: LazyArg<boolean>
```
