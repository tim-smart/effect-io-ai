# withConfigProviderScoped

Sets a configuration provider within a scope.

**Details**

This function sets the configuration provider to a specified value and
ensures that it is restored to its original value when the scope is closed.

To import and use `withConfigProviderScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConfigProviderScoped
```

**Signature**

```ts
export declare const withConfigProviderScoped: (provider: ConfigProvider) => Effect<void, never, Scope.Scope>
```
