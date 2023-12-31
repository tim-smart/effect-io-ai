# race

Returns a new data source that executes requests by sending them to this
data source and that data source, returning the results from the first data
source to complete and safely interrupting the loser.

To import and use `race` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.race
```

**Signature**

```ts
export declare const race: {
  <R2, A2 extends Request.Request<any, any>>(
    that: RequestResolver<A2, R2>
  ): <R, A extends Request.Request<any, any>>(self: RequestResolver<A, R>) => RequestResolver<A2 | A, R2 | R>
  <R, A extends Request.Request<any, any>, R2, A2 extends Request.Request<any, any>>(
    self: RequestResolver<A, R>,
    that: RequestResolver<A2, R2>
  ): RequestResolver<A | A2, R | R2>
}
```
