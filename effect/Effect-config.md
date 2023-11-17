# config

Uses the default config provider to load the specified config, or fail with
an error of type Config.Error.

To import and use `config` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.config
```

**Signature**

```ts
export declare const config: <A>(config: Config<A>) => Effect<never, ConfigError, A>
```
