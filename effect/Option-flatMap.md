# flatMap

Applies a function to the value of an `Option` and flattens the result, if the input is `Some`.

To import and use `flatMap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
}
```
