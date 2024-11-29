# unwrap

Constructs a config from some configuration wrapped with the `Wrap<A>` utility type.

For example:

```
import { Config, unwrap } from "./Config"

interface Options { key: string }

const makeConfig = (config: Config.Wrap<Options>): Config<Options> => unwrap(config)
```

To import and use `unwrap` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.unwrap
undefined

**Signature**

```ts
export declare const unwrap: <A>(wrapped: Config.Wrap<A>) => Config<A>
```
