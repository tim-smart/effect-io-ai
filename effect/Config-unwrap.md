Package: `effect`<br />
Module: `Config`<br />

## Config.unwrap

Constructs a config from some configuration wrapped with the `Wrap<A>` utility type.

For example:

```
import { Config, unwrap } from "./Config"

interface Options { key: string }

const makeConfig = (config: Config.Wrap<Options>): Config<Options> => unwrap(config)
```

**Signature**

```ts
declare const unwrap: <A>(wrapped: Config.Wrap<A>) => Config<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L434)

Since v2.0.0