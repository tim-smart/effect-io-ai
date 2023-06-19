# configProviderWith

Retrieves the default config provider, and passes it to the specified
function, which may return an effect that uses the provider to perform some
work or compute some value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const configProviderWith: <R, E, A>(
  f: (configProvider: ConfigProvider) => Effect<R, E, A>
) => Effect<R, E, A>
```
