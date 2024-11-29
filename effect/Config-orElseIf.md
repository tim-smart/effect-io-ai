# orElseIf

Returns configuration which reads from this configuration, but which falls
back to the specified configuration if reading from this configuration
fails with an error satisfying the specified predicate.

To import and use `orElseIf` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.orElseIf
undefined

**Signature**

```ts
export declare const orElseIf: {
  <A2>(options: {
    readonly if: Predicate<ConfigError.ConfigError>
    readonly orElse: LazyArg<Config<A2>>
  }): <A>(self: Config<A>) => Config<A>
  <A, A2>(
    self: Config<A>,
    options: { readonly if: Predicate<ConfigError.ConfigError>; readonly orElse: LazyArg<Config<A2>> }
  ): Config<A>
}
```
