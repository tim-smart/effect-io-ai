# sync

Constructs a config which contains the specified lazy value.

To import and use `sync` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.sync
```

**Signature**

```ts
export declare const sync: <A>(value: LazyArg<A>) => Config<A>
```
