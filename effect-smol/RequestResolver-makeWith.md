Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.makeWith

Low-level constructor for creating a request resolver with fine-grained
control over its behavior.

**Signature**

```ts
declare const makeWith: <A extends Request.Any>(options: { readonly batchKey: (request: Request.Entry<A>) => unknown; readonly preCheck?: ((entry: Request.Entry<A>) => boolean) | undefined; readonly delay: Effect.Effect<void>; readonly collectWhile: (requests: ReadonlySet<Request.Entry<A>>) => boolean; readonly runAll: (entries: NonEmptyArray<Request.Entry<A>>, key: unknown) => Effect.Effect<void, Request.Error<A>>; }) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L140)

Since v4.0.0