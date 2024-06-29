# isUpstreamPullRequest

Returns `true` if the specified value is an `UpstreamPullRequest`, `false`
otherwise.

To import and use `isUpstreamPullRequest` from the "UpstreamPullRequest" module:

```ts
import * as UpstreamPullRequest from "effect/UpstreamPullRequest"
// Can be accessed like this
UpstreamPullRequest.isUpstreamPullRequest
```

**Signature**

```ts
export declare const isUpstreamPullRequest: (u: unknown) => u is UpstreamPullRequest<unknown>
```
