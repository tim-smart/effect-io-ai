# constNull

A thunk that returns always `null`.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constNull } from '@effect/data/Function'

assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
export declare const constNull: LazyArg<null>
```
