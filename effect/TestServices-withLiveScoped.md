# withLiveScoped

Sets the implementation of the live service to the specified value and
restores it to its original value when the scope is closed.

To import and use `withLiveScoped` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.withLiveScoped
```

**Signature**

```ts
export declare const withLiveScoped: (live: Live.TestLive) => Effect.Effect<Scope.Scope, never, void>
```
