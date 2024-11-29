# fromIterable

Creates a new `MutableList` from an iterable collection of values.

To import and use `fromIterable` from the "MutableList" module:

ts
import \* as MutableList from "effect/MutableList"
// Can be accessed like this
MutableList.fromIterable
undefined

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => MutableList<A>
```
