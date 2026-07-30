Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.testClockWith

Retrieves the `TestClock` service for this test and uses it to run the
specified workflow.

**Signature**

```ts
declare const testClockWith: <A, E, R>(f: (testClock: TestClock) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L544)

Since v2.0.0