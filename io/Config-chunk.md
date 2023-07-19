# chunk

Constructs a config for a sequence of values.

To import and use `chunk` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.chunk
```

**Signature**

```ts
export declare const chunk: <A>(config: Config<A>, name?: string | undefined) => Config<Chunk.Chunk<A>>
```
