# sync

Creates a single-valued pure stream.

To import and use `sync` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.sync
```

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Stream<never, never, A>
```
