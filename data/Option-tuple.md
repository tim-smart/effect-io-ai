# tuple

Similar to `Promise.all` but operates on `Option`s.

```
[Option<A>, Option<B>, ...] -> Option<[A, B, ...]>
```

Takes a tuple of `Option`s and returns an `Option` of a tuple of values.

To import and use `tuple` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.tuple
```

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(O.tuple(O.some(1), O.some('hello')), O.some([1, 'hello']))
assert.deepStrictEqual(O.tuple(O.some(1), O.none()), O.none())
```

**Signature**

```ts
export declare const tuple: <T extends readonly Option<any>[]>(
  ...elements: T
) => Option<{ [I in keyof T]: [T[I]] extends [Option<infer A>] ? A : never }>
```
