# unappend

Return a tuple containing a copy of the `NonEmptyReadonlyArray` without its last element, and that last element.

To import and use `unappend` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.unappend
```

**Signature**

```ts
export declare const unappend: <A>(self: readonly [A, ...A[]]) => [arrayWithoutLastElement: A[], lastElement: A]
```
