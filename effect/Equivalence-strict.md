# strict

Return an `Equivalence` that uses strict equality (===) to compare values.

To import and use `strict` from the "Equivalence" module:

ts
import \* as Equivalence from "effect/Equivalence"
// Can be accessed like this
Equivalence.strict
undefined

**Signature**

```ts
export declare const strict: <A>() => Equivalence<A>
```
