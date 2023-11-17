# all

Takes a structure of `Option`s and returns an `Option` of values with the same structure.

- If a tuple is supplied, then the returned `Option` will contain a tuple with the same length.
- If a struct is supplied, then the returned `Option` will contain a struct with the same keys.
- If an iterable is supplied, then the returned `Option` will contain an array.

To import and use `all` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.all
```

**Example**

```ts
import * as O from "effect/Option"

assert.deepStrictEqual(O.all([O.some(1), O.some(2)]), O.some([1, 2]))
assert.deepStrictEqual(O.all({ a: O.some(1), b: O.some("hello") }), O.some({ a: 1, b: "hello" }))
assert.deepStrictEqual(O.all({ a: O.some(1), b: O.none() }), O.none())
```

**Signature**

```ts
export declare const all: <const I extends Iterable<Option<any>> | Record<string, Option<any>>>(
  input: I
) => [I] extends [readonly Option<any>[]]
  ? Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never }>
  : [I] extends [Iterable<Option<infer A>>]
    ? Option<A[]>
    : Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never }>
```
