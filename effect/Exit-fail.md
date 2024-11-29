# fail

Constructs a new `Exit.Failure` from the specified recoverable error of type
`E`.

To import and use `fail` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.fail
undefined

**Signature**

```ts
export declare const fail: <E>(error: E) => Exit<never, E>
```
