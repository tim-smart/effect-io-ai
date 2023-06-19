# struct

Takes a struct of `Option`s and returns an `Option` of a struct of values.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.struct({ a: O.some(1), b: O.some('hello') }), O.some({ a: 1, b: 'hello' }))
assert.deepStrictEqual(O.struct({ a: O.some(1), b: O.none() }), O.none())
```

**Signature**

```ts
export declare const struct: <R extends Record<string, Option<any>>>(
  fields: R
) => Option<{ [K in keyof R]: [R[K]] extends [Option<infer A>] ? A : never }>
```
