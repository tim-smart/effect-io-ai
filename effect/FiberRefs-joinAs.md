## joinAs

Joins this collection of fiber refs to the specified collection, as the
specified fiber id. This will perform diffing and merging to ensure
preservation of maximum information from both child and parent refs.

**Signature**

```ts
declare const joinAs: { (fiberId: FiberId.Single, that: FiberRefs): (self: FiberRefs) => FiberRefs; (self: FiberRefs, fiberId: FiberId.Single, that: FiberRefs): FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L107)

Since v2.0.0