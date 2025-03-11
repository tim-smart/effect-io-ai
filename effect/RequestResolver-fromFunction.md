## fromFunction

Constructs a data source from a pure function.

**Signature**

```ts
declare const fromFunction: <A extends Request.Request<any>>(f: (request: A) => Request.Request.Success<A>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L260)

Since v2.0.0