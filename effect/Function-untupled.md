# untupled

Inverse function of `tupled`

To import and use `untupled` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.untupled
undefined

**Example**

```ts
import { untupled } from "effect/Function"

const getFirst = untupled(<A, B>(tuple: [A, B]): A => tuple[0])

assert.deepStrictEqual(getFirst(1, 2), 1)
```

**Signature**

```ts
export declare const untupled: <A extends ReadonlyArray<unknown>, B>(f: (a: A) => B) => (...a: A) => B
```
