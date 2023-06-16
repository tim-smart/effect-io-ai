# withClockScoped

Sets the implementation of the clock service to the specified value and
restores it to its original value when the scope is closed.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const withClockScoped: <A extends Clock.Clock>(value: A) => Effect<Scope.Scope, never, void>
```
