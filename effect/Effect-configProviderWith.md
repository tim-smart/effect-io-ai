# configProviderWith

Retrieves the default config provider, and passes it to the specified
function, which may return an effect that uses the provider to perform some
work or compute some value.

To import and use `configProviderWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.configProviderWith
undefined

**Signature**

```ts
export declare const configProviderWith: <A, E, R>(
  f: (configProvider: ConfigProvider) => Effect<A, E, R>
) => Effect<A, E, R>
```
