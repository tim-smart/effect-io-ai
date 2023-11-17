# hashMap

Constructs a config for a sequence of values.

To import and use `hashMap` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.hashMap
```

**Signature**

```ts
export declare const hashMap: <A>(config: Config<A>, name?: string | undefined) => Config<HashMap.HashMap<string, A>>
```
