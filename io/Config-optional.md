# optional

Returns an optional version of this config, which will be `None` if the
data is missing from configuration, and `Some` otherwise.

To import and use `optional` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.optional
```

**Signature**

```ts
export declare const optional: <A>(self: Config<A>) => Config<Option.Option<A>>
```
