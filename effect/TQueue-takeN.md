# takeN

Takes the specified number of elements from the queue. If there are fewer
than the specified number of elements available, it retries until they
become available.

To import and use `takeN` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.takeN
```

**Signature**

```ts
export declare const takeN: {
  (n: number): <A>(self: TDequeue<A>) => STM.STM<never, never, A[]>
  <A>(self: TDequeue<A>, n: number): STM.STM<never, never, A[]>
}
```
