## updateManyAs

Updates the values of the specified `FiberRef` & value pairs using the provided `FiberId`

**Signature**

```ts
declare const updateManyAs: { (options: { readonly forkAs?: FiberId.Single | undefined; readonly entries: readonly [readonly [FiberRef.FiberRef<any>, readonly [readonly [FiberId.Single, any], ...Array<readonly [FiberId.Single, any]>]], ...Array<readonly [FiberRef.FiberRef<any>, readonly [readonly [FiberId.Single, any], ...Array<readonly [FiberId.Single, any]>]]>]; }): (self: FiberRefs) => FiberRefs; (self: FiberRefs, options: { readonly forkAs?: FiberId.Single | undefined; readonly entries: readonly [readonly [FiberRef.FiberRef<any>, readonly [readonly [FiberId.Single, any], ...Array<readonly [FiberId.Single, any]>]], ...Array<readonly [FiberRef.FiberRef<any>, readonly [readonly [FiberId.Single, any], ...Array<readonly [FiberId.Single, any]>]]>]; }): FiberRefs; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L150)

Since v2.0.0