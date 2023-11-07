# init

Get all but the last element of an `Iterable`, creating a new `Array`, or `None` if the `Iterable` is empty.

To import and use `init` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.init
```

**Signature**

```ts
export declare const init: <A>(self: Iterable<A>) => Option<A[]>
```
