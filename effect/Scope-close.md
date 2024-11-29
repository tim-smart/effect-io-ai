# close

Closes this scope with the specified exit value, running all finalizers that
have been added to the scope.

To import and use `close` from the "Scope" module:

ts
import \* as Scope from "effect/Scope"
// Can be accessed like this
Scope.close
undefined

**Signature**

```ts
export declare const close: (self: CloseableScope, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<void>
```
