## isPulled

Returns `true` if the specified `UpstreamPullRequest` is a `Pulled`, `false`
otherwise.

**Signature**

```ts
declare const isPulled: <A>(self: UpstreamPullRequest<A>) => self is Pulled<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UpstreamPullRequest.ts#L86)

Since v2.0.0