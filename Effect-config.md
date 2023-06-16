# config

Uses the default config provider to load the specified config, or fail with
an error of type Config.Error.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const config: <A>(config: Config<A>) => Effect<never, ConfigError, A>
```
