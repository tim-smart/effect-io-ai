# scoped

Converts this fiber into a scoped effect. The fiber is interrupted when the
scope is closed.

To import and use `scoped` from the "Fiber" module:

```ts
import * as Fiber from 'effect/Fiber'

// Can be accessed like this
Fiber.scoped
```

**Signature**

```ts
export declare const scoped: <E, A>(self: Fiber<E, A>) => Effect.Effect<Scope.Scope, never, Fiber<E, A>>
```
