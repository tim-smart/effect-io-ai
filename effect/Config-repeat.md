# repeat

Returns a config that describes a sequence of values, each of which has the
structure of this config.

To import and use `repeat` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.repeat
```

**Signature**

```ts
export declare const repeat: <A>(self: Config<A>) => Config<Array<A>>
```
