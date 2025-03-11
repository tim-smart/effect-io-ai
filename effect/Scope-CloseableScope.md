## CloseableScope

A scope that can be explicitly closed with a specified exit value.

**Signature**

```ts
export interface CloseableScope extends Scope, Pipeable {
  readonly [CloseableScopeTypeId]: CloseableScopeTypeId

  /**
   * Closes this scope with the given exit value, running all finalizers.
   *
   * @internal
   */
  close(exit: Exit.Exit<unknown, unknown>): Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scope.ts#L78)

Since v2.0.0