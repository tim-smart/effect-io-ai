# pretty

Pretty-prints a `RuntimeFiber`.

To import and use `pretty` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.pretty
```

**Signature**

```ts
export declare const pretty: <A, E>(self: RuntimeFiber<A, E>) => Effect.Effect<string>
```
