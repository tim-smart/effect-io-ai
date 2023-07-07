# lift2

Lifts a binary function into `Option`.

To import and use `lift2` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.lift2
```

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => { (that: Option<B>): (self: Option<A>) => Option<C>; (self: Option<A>, that: Option<B>): Option<C> }
```
