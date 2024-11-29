# isSuccess

Returns `true` if the specified `Exit` is a `Success`, `false` otherwise.

To import and use `isSuccess` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.isSuccess
undefined

**Signature**

```ts
export declare const isSuccess: <A, E>(self: Exit<A, E>) => self is Success<A, E>
```
