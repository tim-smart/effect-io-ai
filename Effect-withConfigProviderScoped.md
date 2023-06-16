# withConfigProviderScoped

Sets the configuration provider to the specified value and restores it to its original value
when the scope is closed.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.withConfigProviderScoped`.

### Signature

```typescript
export declare const withConfigProviderScoped: (value: ConfigProvider) => Effect<Scope.Scope, never, void>
```
