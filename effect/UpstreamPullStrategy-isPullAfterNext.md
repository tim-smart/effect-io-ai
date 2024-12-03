# isPullAfterNext

Returns `true` if the specified `UpstreamPullStrategy` is a `PullAfterNext`,
`false` otherwise.

To import and use `isPullAfterNext` from the "UpstreamPullStrategy" module:

```ts
import * as UpstreamPullStrategy from "effect/UpstreamPullStrategy"
// Can be accessed like this
UpstreamPullStrategy.isPullAfterNext
```

**Signature**

```ts
export declare const isPullAfterNext: <A>(self: UpstreamPullStrategy<A>) => self is PullAfterNext<A>
```
