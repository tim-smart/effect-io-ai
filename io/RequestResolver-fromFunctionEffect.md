# fromFunctionEffect

Constructs a data source from an effectual function.

To import and use `fromFunctionEffect` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.fromFunctionEffect
```

**Signature**

```ts
export declare const fromFunctionEffect: <R, A extends Request.Request<any, any>>(
  f: (a: A) => Effect.Effect<R, Request.Request.Error<A>, Request.Request.Success<A>>
) => RequestResolver<A, R>
```
