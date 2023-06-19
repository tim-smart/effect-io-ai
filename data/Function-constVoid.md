# constVoid

A thunk that returns always `void`.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constVoid } from '@effect/data/Function'

assert.deepStrictEqual(constVoid(), undefined)
```

**Signature**

```ts
export declare const constVoid: LazyArg<void>
```
