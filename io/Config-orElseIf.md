# orElseIf

Returns configuration which reads from this configuration, but which falls
back to the specified configuration if reading from this configuration
fails with an error satisfying the specified predicate.

To import and use `orElseIf` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.orElseIf
```

**Signature**

```ts
export declare const orElseIf: {
  <A2>(that: LazyArg<Config<A2>>, condition: Predicate<ConfigError.ConfigError>): <A>(self: Config<A>) => Config<A>
  <A, A2>(self: Config<A>, that: LazyArg<Config<A2>>, condition: Predicate<ConfigError.ConfigError>): Config<A>
}
```
