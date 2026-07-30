Package: `effect`<br />
Module: `FiberRefs`<br />

## FiberRefs.forkAs

Forks this collection of fiber refs as the specified child fiber id. This
will potentially modify the value of the fiber refs, as determined by the
individual fiber refs that make up the collection.

**Signature**

```ts
declare const forkAs: { (childId: FiberId.Single): (self: FiberRefs) => FiberRefs; (self: FiberRefs, childId: FiberId.Single): FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L70)

Since v2.0.0