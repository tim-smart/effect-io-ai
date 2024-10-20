# parallelErrors

Exposes all parallel errors in a single call.

To import and use `parallelErrors` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.parallelErrors
```

**Signature**

```ts
export declare const parallelErrors: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Array<E>, R>
```
