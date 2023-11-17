# fromEffect

Constructs a data source from an effectual function.

To import and use `fromEffect` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <R, A extends Request.Request<any, any>>(
  f: (a: A) => Effect.Effect<R, Request.Request.Error<A>, Request.Request.Success<A>>
) => RequestResolver<A, R>
```
