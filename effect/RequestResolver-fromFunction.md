# fromFunction

Constructs a data source from a pure function.

To import and use `fromFunction` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.fromFunction
```

**Signature**

```ts
export declare const fromFunction: <A extends Request.Request<any>>(
  f: (request: A) => Request.Request.Success<A>
) => RequestResolver<A>
```
