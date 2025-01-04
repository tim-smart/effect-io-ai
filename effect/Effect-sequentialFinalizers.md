# sequentialFinalizers

Ensures that finalizers are run sequentially in reverse order of their
addition.

**Details**

This function modifies the behavior of finalizers within a scoped workflow to
ensure they are run sequentially in reverse order when the scope is closed.

By default, finalizers are executed sequentially, so this only changes the
behavior if the scope is configured to run finalizers concurrently.

To import and use `sequentialFinalizers` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sequentialFinalizers
```

**Signature**

```ts
export declare const sequentialFinalizers: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
