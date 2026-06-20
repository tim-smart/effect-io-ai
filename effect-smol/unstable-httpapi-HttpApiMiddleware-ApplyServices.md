Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ApplyServices

Applies a middleware's service changes to an existing requirement type by removing services it provides and adding services it requires.

**Signature**

```ts
type ApplyServices<A, R> = Exclude<R, Provides<A>> | Requires<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L199)

Since v4.0.0