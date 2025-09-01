Package: `effect`<br />
Module: `Either`<br />

## Either.match

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
declare const match: { <E, B, A, C = B>(options: { readonly onLeft: (left: E) => B; readonly onRight: (right: A) => C; }): (self: Either<A, E>) => B | C; <A, E, B, C = B>(self: Either<A, E>, options: { readonly onLeft: (left: E) => B; readonly onRight: (right: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L397)

Since v2.0.0