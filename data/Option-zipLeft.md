# zipLeft

Sequences the specified `that` `Option` but ignores its value.

It is useful when we want to chain multiple operations, but only care about the result of `self`.

To import and use `zipLeft` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <A, _>(self: Option<A>, that: Option<_>): Option<A>
  <_>(that: Option<_>): <A>(self: Option<A>) => Option<A>
}
```