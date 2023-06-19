# getOrElse

Returns the value of the `Option` if it is `Some`, otherwise returns `onNone`

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import { some, none, getOrElse } from '@effect/data/Option'
import { pipe } from '@effect/data/Function'

assert.deepStrictEqual(
  pipe(
    some(1),
    getOrElse(() => 0)
  ),
  1
)
assert.deepStrictEqual(
  pipe(
    none(),
    getOrElse(() => 0)
  ),
  0
)
```

**Signature**

```ts
export declare const getOrElse: {
  <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => B | A
  <A, B>(self: Option<A>, onNone: LazyArg<B>): A | B
}
```
