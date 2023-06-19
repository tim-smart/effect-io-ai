# not

Negates the given boolean: `!self`

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { not } from '@effect/data/Boolean'

assert.deepStrictEqual(not(true), false)
assert.deepStrictEqual(not(false), true)
```

**Signature**

```ts
export declare const not: (self: boolean) => boolean
```
