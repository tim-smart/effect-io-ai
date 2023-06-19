# constTrue

A thunk that returns always `true`.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constTrue } from '@effect/data/Function'

assert.deepStrictEqual(constTrue(), true)
```

**Signature**

```ts
export declare const constTrue: LazyArg<boolean>
```
