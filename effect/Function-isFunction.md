# isFunction

Tests if a value is a `function`.

To import and use `isFunction` from the "Function" module:

```ts
import * as Function from 'effect/Function'

// Can be accessed like this
Function.isFunction
```

**Example**

```ts
import { isFunction } from 'effect/Predicate'

assert.deepStrictEqual(isFunction(isFunction), true)
assert.deepStrictEqual(isFunction('function'), false)
```

**Signature**

```ts
export declare const isFunction: (input: unknown) => input is Function
```
