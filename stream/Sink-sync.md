# sync

A sink that immediately ends with the specified lazy value.

To import and use `sync` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.sync
```

**Signature**

```ts
export declare const sync: <Z>(evaluate: LazyArg<Z>) => Sink<never, never, unknown, never, Z>
```
