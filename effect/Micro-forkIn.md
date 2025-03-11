## forkIn

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

The lifetime of the handle will be attached to the provided `MicroScope`.

**Signature**

```ts
declare const forkIn: { (scope: MicroScope): <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>; <A, E, R>(self: Micro<A, E, R>, scope: MicroScope): Micro<MicroFiber<A, E>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4157)

Since v3.4.0