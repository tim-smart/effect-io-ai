# array

Constructs a config for an array of values.

To import and use `array` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.array
```

**Signature**

```ts
export declare const array: <A>(config: Config<A>, name?: string | undefined) => Config<readonly A[]>
```
