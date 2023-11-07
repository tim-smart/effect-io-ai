# constVoid

A thunk that returns always `void`.

To import and use `constVoid` from the "Function" module:

```ts
import * as Function from 'effect/Function'

// Can be accessed like this
Function.constVoid
```

**Example**

```ts
import { constVoid } from 'effect/Function'

assert.deepStrictEqual(constVoid(), undefined)
```

**Signature**

```ts
export declare const constVoid: LazyArg<void>
```
