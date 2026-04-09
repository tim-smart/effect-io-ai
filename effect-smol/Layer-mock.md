Package: `effect`<br />
Module: `Layer`<br />

## Layer.mock

Creates a mock layer for testing purposes. You can provide a partial
implementation of the service, and any methods not provided will
throw an unimplemented defect when called.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class UserService extends Context.Service<UserService, {
  readonly config: { apiUrl: string }
  readonly getUser: (
    id: string
  ) => Effect.Effect<{ id: string; name: string }, Error>
  readonly deleteUser: (id: string) => Effect.Effect<void, Error>
  readonly updateUser: (
    id: string,
    data: object
  ) => Effect.Effect<{ id: string; name: string }, Error>
}>()("UserService") {}

// Create a partial mock - only implement what you need for testing
const testUserLayer = Layer.mock(UserService, {
  config: { apiUrl: "https://test-api.com" }, // Required - non-Effect property
  getUser: (id: string) => Effect.succeed({ id, name: "Test User" }) // Mock implementation
  // deleteUser and updateUser are omitted - will throw UnimplementedError if called
})

// Use in tests
const testProgram = Effect.gen(function*() {
  const userService = yield* UserService

  // This works - we provided an implementation
  const user = yield* userService.getUser("123")
  console.log(user.name) // "Test User"

  // This would throw - we didn't implement deleteUser
  // yield* userService.deleteUser("123") // UnimplementedError
}).pipe(
  Effect.provide(testUserLayer)
)
```

**Signature**

```ts
declare const mock: { <I, S extends object>(service: Context.Key<I, S>): (implementation: PartialEffectful<S>) => Layer<I>; <I, S extends object>(service: Context.Key<I, S>, implementation: Types.NoInfer<PartialEffectful<S>>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1895)

Since v4.0.0