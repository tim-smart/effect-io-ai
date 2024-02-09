# consoleWith

Retreives the `Console` service from the context and provides it to the
specified effectful function.

To import and use `consoleWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.consoleWith
```

**Signature**

```ts
export declare const consoleWith: <A, E, R>(f: (console: Console) => Effect<A, E, R>) => Effect<A, E, R>
```
