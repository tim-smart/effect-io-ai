# primitive

Constructs a new primitive config.

To import and use `primitive` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.primitive
```

**Signature**

```ts
export declare const primitive: <A>(
  description: string,
  parse: (text: string) => Either.Either<A, ConfigError.ConfigError>
) => Config<A>
```
