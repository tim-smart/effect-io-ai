# sync

Returns an `STM` effect that succeeds with the specified lazily evaluated
value.

To import and use `sync` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.sync
```

**Signature**

```ts
export declare const sync: <A>(evaluate: () => A) => STM<never, never, A>
```
