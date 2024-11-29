# chunk

Constructs a config for a sequence of values.

To import and use `chunk` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.chunk
undefined

**Signature**

```ts
export declare const chunk: <A>(config: Config<A>, name?: string) => Config<Chunk.Chunk<A>>
```
