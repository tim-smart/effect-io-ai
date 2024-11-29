# flatten

Flattens an Iterable of Iterables into a single Iterable

To import and use `flatten` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.flatten
undefined

**Signature**

```ts
export declare const flatten: <A>(self: Iterable<Iterable<A>>) => Iterable<A>
```
