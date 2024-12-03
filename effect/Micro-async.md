# async

Create a `Micro` effect from an asynchronous computation.

You can return a cleanup effect that will be run when the effect is aborted.
It is also passed an `AbortSignal` that is triggered when the effect is
aborted.

To import and use `async` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.async
```

**Signature**

```ts
export declare const async: <A, E = never, R = never>(
  register: (resume: (effect: Micro<A, E, R>) => void, signal: AbortSignal) => void | Micro<void, never, R>
) => Micro<A, E, R>
```
