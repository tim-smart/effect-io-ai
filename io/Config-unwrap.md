# unwrap

Constructs a config from some configuration wrapped with the `Wrap<A>` utility type.

For example:

```
import { Config, unwrap } from "@effect/io/Config"

interface Options { key: string }

const makeConfig = (config: Config.Wrap<Options>): Config<Options> => unwrap(config)
```

To import and use `unwrap` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.unwrap
```

**Signature**

```ts
export declare const unwrap: <A>(wrapped: Config.Wrap<A>) => Config<A>
```
