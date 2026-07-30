Package: `effect`<br />
Module: `Request`<br />

## Request.Request.Result

A utility type to extract the result type from a `Request`.

**Signature**

```ts
type Result<T> = T extends Request<infer A, infer E> ? Exit.Exit<A, E> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L85)

Since v2.0.0