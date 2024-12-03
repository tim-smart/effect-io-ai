# takeUpTo

Takes up to max number of values from the queue.

To import and use `takeUpTo` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.takeUpTo
```

**Signature**

```ts
export declare const takeUpTo: {
  (max: number): <A>(self: TDequeue<A>) => STM.STM<Array<A>>
  <A>(self: TDequeue<A>, max: number): STM.STM<Array<A>>
}
```
