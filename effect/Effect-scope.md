# scope

Provides access to the current scope in a scoped workflow.

To import and use `scope` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scope
```

**Signature**

```ts
export declare const scope: Effect<Scope.Scope, never, Scope.Scope>
```
