# orElseEither

Similar to `orElse`, but instead of returning a simple union, it returns an `Either` object,
which contains information about which of the two `Option`s has been chosen.

This is useful when it's important to know whether the value was retrieved from the first `Option` or the second option.

To import and use `orElseEither` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<Either<A, B>>
  <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<Either<A, B>>
}
```
