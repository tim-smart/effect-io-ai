# constUndefined

A thunk that returns always `undefined`.

To import and use `constUndefined` from the "Function" module:

```ts
import * as Function from "effect/Function"
// Can be accessed like this
Function.constUndefined
```

**Example**

```ts
import { constUndefined } from "effect/Function"

assert.deepStrictEqual(constUndefined(), undefined)
```

**Signature**

```ts
export declare const constUndefined: LazyArg<undefined>
```
