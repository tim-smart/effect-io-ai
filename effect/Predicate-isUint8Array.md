# isUint8Array

A guard that succeeds when the input is a `Uint8Array`.

To import and use `isUint8Array` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isUint8Array
undefined

**Example**

```ts
import { isUint8Array } from "effect/Predicate"

assert.deepStrictEqual(isUint8Array(new Uint8Array()), true)

assert.deepStrictEqual(isUint8Array(null), false)
assert.deepStrictEqual(isUint8Array({}), false)
```

**Signature**

```ts
export declare const isUint8Array: (input: unknown) => input is Uint8Array
```
