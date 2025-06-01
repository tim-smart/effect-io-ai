Package: `effect`<br />
Module: `Effect`<br />

## Effect.withConfigProviderScoped

Sets a configuration provider within a scope.

**Details**

This function sets the configuration provider to a specified value and
ensures that it is restored to its original value when the scope is closed.

**Signature**

```ts
declare const withConfigProviderScoped: (provider: ConfigProvider) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7392)

Since v2.0.0