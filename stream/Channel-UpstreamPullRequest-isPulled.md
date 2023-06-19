# isPulled

Returns `true` if the specified `UpstreamPullRequest` is a `Pulled`, `false`
otherwise.

Part of the `UpstreamPullRequest` module, imported from `@effect/stream/Channel/UpstreamPullRequest`.

**Signature**

```ts
export declare const isPulled: <A>(self: UpstreamPullRequest<A>) => self is Pulled<A>
```
