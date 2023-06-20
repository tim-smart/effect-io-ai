# map

Maps the `Some` side of an `Option` value to a new `Option` value.

To import and use `map` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => B): Option<B>
}
```
