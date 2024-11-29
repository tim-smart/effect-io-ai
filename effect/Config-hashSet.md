# hashSet

Constructs a config for a sequence of values.

To import and use `hashSet` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.hashSet
undefined

**Signature**

```ts
export declare const hashSet: <A>(config: Config<A>, name?: string) => Config<HashSet.HashSet<A>>
```
