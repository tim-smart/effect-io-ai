# tail

Get all but the first element of an `Iterable`, creating a new `Array`, or `None` if the `Iterable` is empty.

To import and use `tail` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.tail
```

**Signature**

```ts
export declare const tail: <A>(self: Iterable<A>) => Option<A[]>
```
