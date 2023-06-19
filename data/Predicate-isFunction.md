# isFunction

Tests if a value is a `function`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isFunction } from '@effect/data/Predicate'

assert.deepStrictEqual(isFunction(isFunction), true)

assert.deepStrictEqual(isFunction('function'), false)
```

**Signature**

```ts
export declare const isFunction: (input: unknown) => input is Function
```
