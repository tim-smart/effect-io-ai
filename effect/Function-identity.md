# identity

The identity function, i.e. A function that returns its input argument.

To import and use `identity` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.identity
undefined

**Example**

```ts
import { identity } from "effect/Function"

assert.deepStrictEqual(identity(5), 5)
```

**Signature**

```ts
export declare const identity: <A>(a: A) => A
```
