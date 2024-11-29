# update

Constructs a differ that just diffs two values by returning a function that
sets the value to the new value. This differ does not support combining
multiple updates to the value compositionally and should only be used when
there is no compositional way to update them.

To import and use `update` from the "Differ" module:

ts
import \* as Differ from "effect/Differ"
// Can be accessed like this
Differ.update
undefined

**Signature**

```ts
export declare const update: <A>() => Differ<A, (a: A) => A>
```
