# constTrue

A thunk that returns always `true`.

To import and use `constTrue` from the "Function" module:

```ts
import * as Function from '@effect/data/Function'

// Can be accessed like this
Function.constTrue
```

**Example**

```ts
import { constTrue } from '@effect/data/Function'

assert.deepStrictEqual(constTrue(), true)
```

**Signature**

```ts
export declare const constTrue: LazyArg<boolean>
```
