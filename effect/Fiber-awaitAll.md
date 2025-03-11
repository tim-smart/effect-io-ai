## awaitAll

Awaits on all fibers to be completed, successfully or not.

**Signature**

```ts
declare const awaitAll: <const T extends Iterable<Fiber<any, any>>>(fibers: T) => Effect.Effect<[T] extends [ReadonlyArray<infer U>] ? number extends T["length"] ? Array<U extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never> : { -readonly [K in keyof T]: T[K] extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never; } : Array<T extends Iterable<infer U> ? U extends Fiber<infer A, infer E> ? Exit.Exit<A, E> : never : never>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L354)

Since v2.0.0