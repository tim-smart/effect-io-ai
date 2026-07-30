Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.testConfigWith

Retrieves the `TestConfig` service for this test and uses it to run the
specified workflow.

**Signature**

```ts
declare const testConfigWith: <A, E, R>(f: (config: TestConfig.TestConfig) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L303)

Since v2.0.0