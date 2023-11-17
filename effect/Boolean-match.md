# match

This function returns the result of either of the given functions depending on the value of the boolean parameter.
It is useful when you have to run one of two functions depending on the boolean value.

To import and use `match` from the "Boolean" module:

```ts
import * as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.match
```

**Example**

```ts
import * as B from "effect/Boolean"

assert.deepStrictEqual(B.match(true, { onFalse: () => "It's false!", onTrue: () => "It's true!" }), "It's true!")
```

**Signature**

```ts
export declare const match: {
  <A, B = A>(options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B> }): (value: boolean) => A | B
  <A, B>(value: boolean, options: { readonly onFalse: LazyArg<A>; readonly onTrue: LazyArg<B> }): A | B
}
```
