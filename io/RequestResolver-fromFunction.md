# fromFunction

Constructs a data source from a pure function.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const fromFunction: <A extends Request.Request<never, any>>(
  f: (request: A) => Request.Request.Success<A>
) => RequestResolver<A, never>
```
