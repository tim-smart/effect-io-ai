# fromIterable

Creates a new `TSet` from an iterable collection of values.

To import and use `fromIterable` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.fromIterable
undefined

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => STM.STM<TSet<A>>
```
