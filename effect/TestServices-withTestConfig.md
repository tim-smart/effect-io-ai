Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.withTestConfig

Executes the specified workflow with the specified implementation of the
config service.

**Signature**

```ts
declare const withTestConfig: ((config: TestConfig.TestConfig) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(effect: Effect.Effect<A, E, R>, config: TestConfig.TestConfig) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L324)

Since v2.0.0