# intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `intersperse` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.intersperse
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const result = Array.intersperse(numbers, 0)
assert.deepStrictEqual(result, [1, 0, 2, 0, 3])
```

**Signature**

```ts
export declare const intersperse: {
  <B>(middle: B): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, B | ReadonlyArray.Infer<S>>
  <A, B>(self: readonly [A, ...A[]], middle: B): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, middle: B): (A | B)[]
}
```
