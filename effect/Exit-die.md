# die

Constructs a new `Exit.Failure` from the specified unrecoverable defect.

To import and use `die` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.die
undefined

**Signature**

```ts
export declare const die: (defect: unknown) => Exit<never>
```
