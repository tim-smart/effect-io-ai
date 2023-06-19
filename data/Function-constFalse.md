# constFalse

A thunk that returns always `false`.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constFalse } from '@effect/data/Function'

assert.deepStrictEqual(constFalse(), false)
```

**Signature**

```ts
export declare const constFalse: LazyArg<boolean>
```
