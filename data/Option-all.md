# all

Takes a structure of `Option`s and returns an `Option` of values with the same structure.

- If a tuple is supplied, then the returned `Option` will contain a tuple with the same length.
- If a struct is supplied, then the returned `Option` will contain a struct with the same keys.
- If an iterable is supplied, then the returned `Option` will contain an array.

To import and use `all` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.all
```

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.all({ a: O.some(1), b: O.some('hello') }), O.some({ a: 1, b: 'hello' }))
assert.deepStrictEqual(O.all({ a: O.some(1), b: O.none() }), O.none())
assert.deepStrictEqual(O.all(O.some(1), O.some('hello')), O.some([1, 'hello']))
assert.deepStrictEqual(O.all([O.some(1), O.some(2)]), O.some([1, 2]))
```

**Signature**

```ts
export declare const all: {
  <A extends readonly Option<any>[]>(elements: A): Option<{
    -readonly [I in keyof A]: [A[I]] extends [Option<infer _A>] ? _A : never
  }>
  <A>(elements: Iterable<Option<A>>): Option<A[]>
  <A extends readonly Option<any>[]>(...elements: A): Option<{
    -readonly [I in keyof A]: [A[I]] extends [Option<infer A>] ? A : never
  }>
  <A extends Record<string, Option<any>>>(fields: A): Option<{
    -readonly [K in keyof A]: [A[K]] extends [Option<infer A>] ? A : never
  }>
}
```
