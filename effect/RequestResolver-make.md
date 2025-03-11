## make

Constructs a data source with the specified identifier and method to run
requests.

**Signature**

```ts
declare const make: <A, R>(runAll: (requests: Array<Array<A>>) => Effect.Effect<void, never, R>) => RequestResolver<A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L118)

Since v2.0.0