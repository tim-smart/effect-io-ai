# orElse

Returns the provided `Option` `that` if `self` is `None`, otherwise returns `self`.

To import and use `orElse` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.orElse
```

**Example**

```ts
import * as O from '@effect/data/Option'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  pipe(
    O.none(),
    O.orElse(() => O.none())
  ),
  O.none()
)
assert.deepStrictEqual(
  pipe(
    O.some('a'),
    O.orElse(() => O.none())
  ),
  O.some('a')
)
assert.deepStrictEqual(
  pipe(
    O.none(),
    O.orElse(() => O.some('b'))
  ),
  O.some('b')
)
assert.deepStrictEqual(
  pipe(
    O.some('a'),
    O.orElse(() => O.some('b'))
  ),
  O.some('a')
)
```

**Signature**

```ts
export declare const orElse: {
  <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<B | A>
  <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<A | B>
}
```
