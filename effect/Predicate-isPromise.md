# isPromise

A guard that succeeds when the input is a Promise.

To import and use `isPromise` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isPromise
```

**Example**

```ts
import { isPromise } from "effect/Predicate"

assert.deepStrictEqual(isPromise({}), false)
assert.deepStrictEqual(isPromise(Promise.resolve("hello")), true)
```

**Signature**

```ts
export declare const isPromise: (input: unknown) => input is Promise<unknown>
```
