# match

This function returns the result of either of the given functions depending on the value of the boolean parameter.
It is useful when you have to run one of two functions depending on the boolean value.

To import and use `match` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.match
```

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
