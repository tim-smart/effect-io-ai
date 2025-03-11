## withMicroFiber

Create a `Micro` effect using the current `MicroFiber`.

**Signature**

```ts
declare const withMicroFiber: <A, E = never, R = never>(evaluate: (fiber: MicroFiberImpl<A, E>) => Micro<A, E, R>) => Micro<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1111)

Since v3.4.0