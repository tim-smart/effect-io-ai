Package: `effect`<br />
Module: `Effect`<br />

## Effect.withConsoleScoped

Sets the implementation of the console service to the specified value and
restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withConsoleScoped: <A extends Console>(console: A) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6821)

Since v2.0.0