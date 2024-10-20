# awaitAll

Awaits on all fibers to be completed, successfully or not.

To import and use `awaitAll` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.awaitAll
```

**Signature**

```ts
export declare const awaitAll: <const T extends Iterable<Fiber<any, any>>>(
  fibers: T
) => Effect.Effect<
  [T] extends [ReadonlyArray<infer U>]
    ? number extends T["length"]
      ? Array<U extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never>
      : { -readonly [K in keyof T]: T[K] extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never }
    : Array<T extends Iterable<infer U> ? (U extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never) : never>
>
```
