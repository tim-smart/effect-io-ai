# failSync

Creates a `Micro` effect that will fail with the lazily evaluated error.

This results in a `Fail` variant of the `MicroCause` type, where the error is
tracked at the type level.

To import and use `failSync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.failSync
```

**Signature**

```ts
export declare const failSync: <E>(error: LazyArg<E>) => Micro<never, E>
```
