# match

Matches the given `Option` and returns either the provided `onNone` value or the result of the provided `onSome`
function when passed the `Option`'s value.

To import and use `match` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.match
```

**Example**

```ts
import { some, none, match } from '@effect/data/Option'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  pipe(some(1), match({ onNone: () => 'a none', onSome: (a) => `a some containing ${a}` })),
  'a some containing 1'
)

assert.deepStrictEqual(
  pipe(none(), match({ onNone: () => 'a none', onSome: (a) => `a some containing ${a}` })),
  'a none'
)
```

**Signature**

```ts
export declare const match: {
  <B, A, C = B>(options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C }): (self: Option<A>) => B | C
  <A, B, C = B>(self: Option<A>, options: { readonly onNone: LazyArg<B>; readonly onSome: (a: A) => C }): B | C
}
```
