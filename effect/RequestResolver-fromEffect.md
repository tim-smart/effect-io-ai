## fromEffect

Constructs a data source from an effectual function.

**Signature**

```ts
declare const fromEffect: <R, A extends Request.Request<any, any>>(f: (a: A) => Effect.Effect<Request.Request.Success<A>, Request.Request.Error<A>, R>) => RequestResolver<A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L282)

Since v2.0.0