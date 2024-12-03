# unsafeHead

Get the first element of a `Iterable`, or throw an error if the `Iterable` is empty.

To import and use `unsafeHead` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.unsafeHead
```

**Signature**

```ts
export declare const unsafeHead: <A>(self: Iterable<A>) => A
```
