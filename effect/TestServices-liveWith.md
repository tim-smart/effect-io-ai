## liveWith

Retrieves the `Live` service for this test and uses it to run the specified
workflow.

**Signature**

```ts
declare const liveWith: <A, E, R>(f: (live: Live.TestLive) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L151)

Since v2.0.0