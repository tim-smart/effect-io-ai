# unappend

Return a tuple containing a copy of the `NonEmptyReadonlyArray` without its last element, and that last element.

To import and use `unappend` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.unappend
```

**Signature**

```ts
export declare const unappend: <A>(self: readonly [A, ...A[]]) => [A[], A]
```
