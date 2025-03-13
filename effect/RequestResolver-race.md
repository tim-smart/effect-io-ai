Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.race

Returns a new data source that executes requests by sending them to this
data source and that data source, returning the results from the first data
source to complete and safely interrupting the loser.

**Signature**

```ts
declare const race: { <A2 extends Request.Request<any, any>, R2>(that: RequestResolver<A2, R2>): <A extends Request.Request<any, any>, R>(self: RequestResolver<A, R>) => RequestResolver<A2 | A, R2 | R>; <A extends Request.Request<any, any>, R, A2 extends Request.Request<any, any>, R2>(self: RequestResolver<A, R>, that: RequestResolver<A2, R2>): RequestResolver<A | A2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L340)

Since v2.0.0