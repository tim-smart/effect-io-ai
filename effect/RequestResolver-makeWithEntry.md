## makeWithEntry

Constructs a data source with the specified identifier and method to run
requests.

**Signature**

```ts
declare const makeWithEntry: <A, R>(runAll: (requests: Array<Array<Request.Entry<A>>>) => Effect.Effect<void, never, R>) => RequestResolver<A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L129)

Since v2.0.0