Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Request.Without

Removes request-level markers from a union, leaving only ordinary requirement
or error types.

**Signature**

```ts
type Without<A> = A extends Request<infer _Kind, infer _> ? never : A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L760)

Since v4.0.0