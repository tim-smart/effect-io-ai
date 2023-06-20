# chunkOf

Constructs a config for a sequence of values.

To import and use `chunkOf` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.chunkOf
```

**Signature**

```ts
export declare const chunkOf: <A>(config: Config<A>, name?: string | undefined) => Config<Chunk.Chunk<A>>
```
