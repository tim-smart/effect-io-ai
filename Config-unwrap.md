# unwrap

Constructs a config from some configuration wrapped with the `Wrap<A>` utility type.

For example:

```
import { Config, unwrap } from "@effect/io/Config"

interface Options { key: string }

const makeConfig = (config: Config.Wrap<Options>): Config<Options> => unwrap(config)
```

Part of the `Config` module from the `@effect/io` package. Also known as `Config.unwrap`.
