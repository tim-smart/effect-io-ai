# match

This function returns the result of either of the given functions depending on the value of the boolean parameter.
It is useful when you have to run one of two functions depending on the boolean value.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import * as B from '@effect/data/Boolean'

assert.deepStrictEqual(
  B.match(
    true,
    () => "It's false!",
    () => "It's true!"
  ),
  "It's true!"
)
```

**Signature**

```ts
export declare const match: {
  <A, B = A>(onFalse: LazyArg<A>, onTrue: LazyArg<B>): (value: boolean) => A | B
  <A, B>(value: boolean, onFalse: LazyArg<A>, onTrue: LazyArg<B>): A | B
}
```
