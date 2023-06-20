# inspectSome

Useful for debugging purposes, the `onSome` callback is called with the value of `self` if it is a `Some`.

To import and use `inspectSome` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.inspectSome
```

**Signature**

```ts
export declare const inspectSome: {
  <A>(onSome: (a: A) => void): (self: Option<A>) => Option<A>
  <A>(self: Option<A>, onSome: (a: A) => void): Option<A>
}
```
