# option

Returns an optional version of this config, which will be `None` if the
data is missing from configuration, and `Some` otherwise.

To import and use `option` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.option
undefined

**Signature**

```ts
export declare const option: <A>(self: Config<A>) => Config<Option.Option<A>>
```
