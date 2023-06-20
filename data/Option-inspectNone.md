# inspectNone

Useful for debugging purposes, the `onNone` callback is is called if `self` is a `None`.

To import and use `inspectNone` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.inspectNone
```

**Signature**

```ts
export declare const inspectNone: {
  (onNone: () => void): <A>(self: Option<A>) => Option<A>
  <A>(self: Option<A>, onNone: () => void): Option<A>
}
```
