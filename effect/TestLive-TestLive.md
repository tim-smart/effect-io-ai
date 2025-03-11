## TestLive

The `Live` trait provides access to the "live" default Effect services from
within tests for workflows such as printing test results to the console or
timing out tests where it is necessary to access the real implementations of
these services.

**Signature**

```ts
export interface TestLive {
  readonly [TestLiveTypeId]: TestLiveTypeId
  provide<A, E, R>(effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestLive.ts#L28)

Since v2.0.0