# fromFunctionEffect

Constructs a data source from an effectual function.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const fromFunctionEffect: <R, A extends Request.Request<any, any>>(
  f: (a: A) => Effect.Effect<R, Request.Request.Error<A>, Request.Request.Success<A>>
) => RequestResolver<A, R>
```
