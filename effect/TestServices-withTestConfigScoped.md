## withTestConfigScoped

Sets the implementation of the config service to the specified value and
restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withTestConfigScoped: (config: TestConfig.TestConfig) => Effect.Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L339)

Since v2.0.0