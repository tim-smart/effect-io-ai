Package: `effect`<br />
Module: `Effect`<br />

## Effect.configProviderWith

Allows working with the default configuration provider.

**Details**

This function retrieves the default configuration provider and passes it to
the provided function, which can use it to perform computations or retrieve
configuration values. The function can return an effect that leverages the
configuration provider for its operations.

**Signature**

```ts
declare const configProviderWith: <A, E, R>(f: (provider: ConfigProvider) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7335)

Since v2.0.0