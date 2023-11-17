# isPulled

Returns `true` if the specified `UpstreamPullRequest` is a `Pulled`, `false`
otherwise.

To import and use `isPulled` from the "UpstreamPullRequest" module:

```ts
import * as UpstreamPullRequest from "effect/UpstreamPullRequest"
// Can be accessed like this
UpstreamPullRequest.isPulled
```

**Signature**

```ts
export declare const isPulled: <A>(self: UpstreamPullRequest<A>) => self is Pulled<A>
```
