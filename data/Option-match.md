# match

Matches the given `Option` and returns either the provided `onNone` value or the result of the provided `onSome`
function when passed the `Option`'s value.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, match } from '@effect/data/Option'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  pipe(
    some(1),
    match(
      () => 'a none',
      (a) => `a some containing ${a}`
    )
  ),
  'a some containing 1'
)

assert.deepStrictEqual(
  pipe(
    none(),
    match(
      () => 'a none',
      (a) => `a some containing ${a}`
    )
  ),
  'a none'
)
```

**Signature**

```ts
export declare const match: {
  <B, A, C = B>(onNone: LazyArg<B>, onSome: (a: A) => C): (self: Option<A>) => B | C
  <A, B, C = B>(self: Option<A>, onNone: LazyArg<B>, onSome: (a: A) => C): B | C
}
```
