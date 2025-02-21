# configProviderWith

Allows working with the default configuration provider.

**Details**

This function retrieves the default configuration provider and passes it to
the provided function, which can use it to perform computations or retrieve
configuration values. The function can return an effect that leverages the
configuration provider for its operations.

To import and use `configProviderWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.configProviderWith
```

**Signature**

```ts
export declare const configProviderWith: <A, E, R>(f: (provider: ConfigProvider) => Effect<A, E, R>) => Effect<A, E, R>
```
