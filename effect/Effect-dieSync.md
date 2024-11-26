# dieSync

Creates an effect that dies with the specified error, evaluated lazily.

This function allows you to create an effect that will terminate with a fatal error.
The error is provided as a lazy argument, meaning it will only be evaluated when the effect runs.

To import and use `dieSync` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.dieSync
```

**Signature**

```ts
export declare const dieSync: (evaluate: LazyArg<unknown>) => Effect<never>
```
