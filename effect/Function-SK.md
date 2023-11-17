# SK

The SK combinator, also known as the "S-K combinator" or "S-combinator", is a fundamental combinator in the
lambda calculus and the SKI combinator calculus.

This function is useful for discarding the first argument passed to it and returning the second argument.

To import and use `SK` from the "Function" module:

```ts
import * as Function from "effect/Function"
// Can be accessed like this
Function.SK
```

**Example**

```ts
import { SK } from "effect/Function"

assert.deepStrictEqual(SK(0, "hello"), "hello")
```

**Signature**

```ts
export declare const SK: <A, B>(_: A, b: B) => B
```
