# orElse

Returns a config whose structure is preferentially described by this
config, but which falls back to the specified config if there is an issue
reading from this config.

To import and use `orElse` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.orElse
undefined

**Signature**

```ts
export declare const orElse: {
  <A2>(that: LazyArg<Config<A2>>): <A>(self: Config<A>) => Config<A2 | A>
  <A, A2>(self: Config<A>, that: LazyArg<Config<A2>>): Config<A | A2>
}
```
