## Request.OptionalResult

A utility type to extract the optional result type from a `Request`.

**Signature**

```ts
type OptionalResult<T> = T extends Request<infer A, infer E>
    ? Exit.Exit<Option.Option<A>, E>
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L93)

Since v2.0.0