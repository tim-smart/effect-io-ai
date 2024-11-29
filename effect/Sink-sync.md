# sync

A sink that immediately ends with the specified lazy value.

To import and use `sync` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.sync
undefined

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Sink<A, unknown>
```
