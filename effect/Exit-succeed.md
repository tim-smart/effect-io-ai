# succeed

Constructs a new `Exit.Success` containing the specified value of type `A`.

To import and use `succeed` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.succeed
undefined

**Signature**

```ts
export declare const succeed: <A>(value: A) => Exit<A>
```
