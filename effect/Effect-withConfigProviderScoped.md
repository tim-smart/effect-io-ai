# withConfigProviderScoped

Sets the configuration provider to the specified value and restores it to its original value
when the scope is closed.

To import and use `withConfigProviderScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConfigProviderScoped
```

**Signature**

```ts
export declare const withConfigProviderScoped: (value: ConfigProvider) => Effect<Scope.Scope, never, void>
```
