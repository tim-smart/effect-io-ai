# isNeverFlat

Returns `true` if the specified `Flatten` is a `NeverFlat`, `false` otherwise.

To import and use `isNeverFlat` from the "Flatten" module:

ts
import \* as Flatten from "@effect/printer/Flatten"
// Can be accessed like this
Flatten.isNeverFlat
undefined

**Signature**

```ts
export declare const isNeverFlat: <A>(a: Flatten<A>) => a is NeverFlat<A>
```
