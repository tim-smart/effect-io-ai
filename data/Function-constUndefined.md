# constUndefined

A thunk that returns always `undefined`.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constUndefined } from '@effect/data/Function'

assert.deepStrictEqual(constUndefined(), undefined)
```

**Signature**

```ts
export declare const constUndefined: LazyArg<undefined>
```
