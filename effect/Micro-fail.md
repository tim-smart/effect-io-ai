# fail

Creates a `Micro` effect that fails with the given error.

This results in a `Fail` variant of the `MicroCause` type, where the error is
tracked at the type level.

To import and use `fail` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Micro<never, E>
```
