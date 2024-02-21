# match

Takes two functions and an `Either` value, if the value is a `Left` the inner value is applied to the `onLeft function,
if the value is a `Right`the inner value is applied to the`onRight` function.

To import and use `match` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.match
```

**Example**

```ts
import * as E from "effect/Either"
import { pipe } from "effect/Function"

const onLeft = (strings: ReadonlyArray<string>): string => `strings: ${strings.join(", ")}`

const onRight = (value: number): string => `Ok: ${value}`

assert.deepStrictEqual(pipe(E.right(1), E.match({ onLeft, onRight })), "Ok: 1")
assert.deepStrictEqual(
  pipe(E.left(["string 1", "string 2"]), E.match({ onLeft, onRight })),
  "strings: string 1, string 2"
)
```

**Signature**

```ts
export declare const match: {
  <L, B, R, C = B>(options: {
    readonly onLeft: (left: L) => B
    readonly onRight: (right: R) => C
  }): (self: Either<R, L>) => B | C
  <R, L, B, C = B>(
    self: Either<R, L>,
    options: { readonly onLeft: (left: L) => B; readonly onRight: (right: R) => C }
  ): B | C
}
```
