# failCause

Constructs a new `Exit.Failure` from the specified `Cause` of type `E`.

To import and use `failCause` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Exit<never, E>
```
