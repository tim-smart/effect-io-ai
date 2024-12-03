# withConsoleScoped

Sets the implementation of the console service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withConsoleScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConsoleScoped
```

**Signature**

```ts
export declare const withConsoleScoped: <A extends Console>(console: A) => Effect<void, never, Scope.Scope>
```
