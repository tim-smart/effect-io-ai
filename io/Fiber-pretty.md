# pretty

Pretty-prints a `RuntimeFiber`.

To import and use `pretty` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.pretty
```

**Signature**

```ts
export declare const pretty: <E, A>(self: RuntimeFiber<E, A>) => Effect.Effect<never, never, string>
```
