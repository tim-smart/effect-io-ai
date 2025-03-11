## close

Closes this scope with the specified exit value, running all finalizers that
have been added to the scope.

**Signature**

```ts
declare const close: (self: CloseableScope, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L150)

Since v2.0.0