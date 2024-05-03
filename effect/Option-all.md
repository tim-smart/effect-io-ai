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
import { Option } from "effect"

assert.deepStrictEqual(Option.all([Option.some(1), Option.some(2)]), Option.some([1, 2]))
assert.deepStrictEqual(Option.all({ a: Option.some(1), b: Option.some("hello") }), Option.some({ a: 1, b: "hello" }))
assert.deepStrictEqual(Option.all({ a: Option.some(1), b: Option.none() }), Option.none())
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
