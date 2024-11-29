# isFailure

Returns `true` if the specified `Exit` is a `Failure`, `false` otherwise.

To import and use `isFailure` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.isFailure
undefined

**Signature**

```ts
export declare const isFailure: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```
