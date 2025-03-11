## match

Takes two functions and an `Either` value, if the value is a `Left` the inner value is applied to the `onLeft function,
if the value is a `Right` the inner value is applied to the `onRight` function.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Either } from "effect"

const onLeft  = (strings: ReadonlyArray<string>): string => `strings: ${strings.join(', ')}`

const onRight = (value: number): string => `Ok: ${value}`

assert.deepStrictEqual(pipe(Either.right(1), Either.match({ onLeft, onRight })), 'Ok: 1')
assert.deepStrictEqual(
  pipe(Either.left(['string 1', 'string 2']), Either.match({ onLeft, onRight })),
  'strings: string 1, string 2'
)
```

**Signature**

```ts
declare const match: { <L, B, R, C = B>(options: { readonly onLeft: (left: L) => B; readonly onRight: (right: R) => C; }): (self: Either<R, L>) => B | C; <R, L, B, C = B>(self: Either<R, L>, options: { readonly onLeft: (left: L) => B; readonly onRight: (right: R) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L396)

Since v2.0.0