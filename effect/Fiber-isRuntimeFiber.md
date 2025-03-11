## isRuntimeFiber

Returns `true` if the specified `Fiber` is a `RuntimeFiber`, `false`
otherwise.

**Signature**

```ts
declare const isRuntimeFiber: <A, E>(self: Fiber<A, E>) => self is RuntimeFiber<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L325)

Since v2.0.0