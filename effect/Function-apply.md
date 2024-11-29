# apply

Apply a function to a given value.

To import and use `apply` from the "Function" module:

ts
import \* as Function from "effect/Function"
// Can be accessed like this
Function.apply
undefined

**Example**

```ts
import { pipe, apply } from "effect/Function"
import { length } from "effect/String"

assert.deepStrictEqual(pipe(length, apply("hello")), 5)
```

**Signature**

```ts
export declare const apply: <A>(a: A) => <B>(self: (a: A) => B) => B
```
