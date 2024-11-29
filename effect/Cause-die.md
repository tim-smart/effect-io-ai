# die

Constructs a new `Die` cause from the specified `defect`.

To import and use `die` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.die
undefined

**Signature**

```ts
export declare const die: (defect: unknown) => Cause<never>
```
